//
//  ContentView.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/22.
//

import SwiftUI

struct ContentView: View {
    @State private var opacity: Double = 0.0
    var body: some View {
        NavigationView {
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                HStack {
                    Image("Monster-Energy-Yamaha-MotoGP-Argentina")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                        .rotationEffect(.degrees(25))
                        .opacity(opacity)
                        .animation(.easeOut(duration: 5), value: opacity)
                        .onAppear() {
                            opacity += 1.0
                        }
                }
                NavigationLink ("Start"){
                    Menu()
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
                .frame(height: 100)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
