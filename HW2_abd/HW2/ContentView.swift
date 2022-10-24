//
//  ContentView.swift
//  HW2
//
//  Created by 李炘杰 on 2022/10/13.
//

import SwiftUI


struct ContentView: View {
    @State private var isSideBarOpened = false
    var body: some View {
        ZStack {
            NavigationView {
//                GeometryReader { dimensions in
                    ZStack{
                        VStack{
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                            Spacer()
                            Button(role: ButtonRole.destructive) {
                                isSideBarOpened.toggle()
                            } label: {
                                Text("Get Started")
                            }
                            .padding()
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .background(Color(.init(
                                red: 199 / 255,
                                green: 42 / 255,
                                blue: 70 / 255,
                                alpha: 1)))
                            .cornerRadius(30)
                            .frame(height: 200)
                        }
//                    }
                }
            }
            Sidebar(isSidebarVisible: $isSideBarOpened)
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
