//
//  Sidebar.swift
//  HW2
//
//  Created by 李炘杰 on 2022/10/13.
//

import SwiftUI

var secondaryColor: Color = Color(.init(red: 100 / 255, green: 174 / 255, blue: 255 / 255, alpha: 1))
struct MenuItem: Identifiable {
    var id: Int
    var icon: String
    var text: String
}

var userActions: [MenuItem] = [
    MenuItem(id: 001, icon: "house", text: "Home"),
    MenuItem(id: 002, icon: "star.fill", text: "News"),
    MenuItem(id: 003, icon: "wrench.adjustable.fill", text: "Factory"),
    MenuItem(id: 004, icon: "person.fill", text: "Rider"),
    MenuItem(id: 005, icon: "crown.fill", text: "Liveboard")
]




struct Sidebar: View {
    @Binding var isSidebarVisible: Bool
    var sideBarWidth = UIScreen.main.bounds.size.width * 0.6
    var bgColor: Color = Color(.init(red: 199 / 255, green: 42 / 255, blue: 70 / 255, alpha: 1))
    var content: some View {
        HStack(alignment: .top) {
            ZStack(alignment: .top) {
                bgColor
                MenuChevron
                VStack(alignment: .leading, spacing: 20) {
                    MenuLinks(items: userActions)
                }
                .padding(.top, 80)
                .padding(.horizontal, 40)
            }
            .frame(width: sideBarWidth)
            .offset(x: isSidebarVisible ? 0 : -sideBarWidth)
            .animation(.default, value: isSidebarVisible)
            Spacer()
        }
    }
    
    var MenuChevron: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 18)
                .fill(bgColor)
                .frame(width: 60, height: 60)
                .rotationEffect(Angle(degrees: 45))
                .offset(x: isSidebarVisible ? -18 : -10)
                .onTapGesture {
                    isSidebarVisible.toggle()
                }
            
            Image(systemName: "chevron.right")
                .foregroundColor(secondaryColor)
                .rotationEffect(
                    isSidebarVisible ?
                    Angle(degrees: 180) : Angle(degrees: 0))
                .offset(x: isSidebarVisible ? -4 : 8)
                .foregroundColor(.blue)
        }
        .offset(x: sideBarWidth / 2, y: 80)
        .animation(.default, value: isSidebarVisible)
    }
    
    
    var body: some View {
        ZStack {
            GeometryReader { _ in
                EmptyView()
            }
            .background(.black.opacity(0.6))
            .opacity(isSidebarVisible ? 1 : 0)
            .animation(.easeInOut.delay(0.2), value: isSidebarVisible)
            .onTapGesture {
                isSidebarVisible.toggle()
            }
            content
        }
        .edgesIgnoringSafeArea(.all)
    }
    
}

struct MenuLinks: View {
    var items: [MenuItem]
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ForEach(items) { item in
                menuLink(icon: item.icon, text: item.text)
            }
        }
        .padding(.vertical, 14)
        .padding(.leading, -20)
    }
}

struct menuLink: View {
    var icon: String
    var text: String
    var body: some View {
            NavigationLink{
                let _ = print(text)
                switch text{
                    case "Home": ContentView()
                    case "News": News()
                    case "Factory": Factory()
                    case "Rider": Rider()
                    case "Liveboard": Liveboard()
                    default: ContentView()
                }
            } label: {
                HStack {
                    Image(systemName: icon)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(secondaryColor)
                        .padding(.trailing, 18)
                    Text(text)
                        .foregroundColor(.white)
                        .font(.body)
                }
              
            }
        
    }
}


struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
