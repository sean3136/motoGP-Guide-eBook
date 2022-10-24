//
//  ridericon.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI

struct ridericon: View {
    let rider: riderdata
    var body: some View {
        VStack{
            ZStack {
                Image(rider.img)
                    .resizable()
                    .scaledToFit()
                    .frame(width:300)
                Image(rider.flag)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .offset(x: 120, y: 210)
            }
            
            Text(rider.name)
                .font(.custom("", size: 40))
                .foregroundColor(Color(colorn: rider.color))
                .multilineTextAlignment(.center)
            
        }
    }
}

extension Color {
    init?(colorn: String) {
        switch colorn {
        case "clear":       self = .clear
        case "black":       self = .black
        case "white":       self = .white
        case "gray":        self = .gray
        case "red":         self = .red
        case "green":       self = .green
        case "blue":        self = .blue
        case "orange":      self = .orange
        case "yellow":      self = .yellow
        case "pink":        self = .pink
        case "purple":      self = .purple
        case "primary":     self = .primary
        case "secondary":   self = .secondary
        default:            return nil
        }
    }
}

struct ridericon_Previews: PreviewProvider {
    static var previews: some View {
        ridericon(rider: .dr)
    }
}
