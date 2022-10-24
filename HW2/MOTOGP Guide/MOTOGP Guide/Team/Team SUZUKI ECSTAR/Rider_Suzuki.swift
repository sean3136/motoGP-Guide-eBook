//
//  Rider_Suzuki.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI

struct Rider_Suzuki: View {
    let riderls = [
        riderdata(number: "09", img: "09_Danilo_Petrucci", name: "Danilo etrucci", flag: "IT", color: "blue"),
        riderdata(number: "36", img: "36_Joan_Mir", name: "Joan Mir", flag: "ES", color: "blue"),
        riderdata(number: "42", img: "42_Alex_Rins", name: "Alex Rins", flag: "ES", color: "blue")
        
    ]
    var body: some View {
        TabView {
            ForEach(0..<riderls.count, id: \.self) { index in
                ridericon(rider: riderls[index])
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct Rider_Suzuki_Previews: PreviewProvider {
    static var previews: some View {
        Rider_Suzuki()
    }
}
