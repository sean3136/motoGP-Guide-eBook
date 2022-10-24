//
//  Menu.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/22.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        TabView{
            Home()
                .tabItem {
                    Label("History", systemImage: "clock.arrow.circlepath")
                }
            News()
                .tabItem {
                    Label("News", systemImage:"megaphone")
                }
            Team()
                .tabItem {
                    Label("Team",systemImage: "flag")
                }
            Liveboard()
                .tabItem {
                    Label("Liveboard",systemImage: "crown.fill")
                }
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
