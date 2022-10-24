//
//  Rider_Aprilia Racing.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI

struct Rider_Aprilia_Racing: View {
    let riderls = [
        riderdata(number: "12", img: "12_Maverick_Vinales_MotoGP_Rider_DS_5246", name: "Maverick  Vinales", flag: "ES", color: "green"),
        riderdata(number: "41", img: "41-Aleix-Espargaro-Rider_DS_5304", name: "Aleix Espargaro", flag: "ES", color: "green")
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

struct Rider_Aprilia_Racing_Previews: PreviewProvider {
    static var previews: some View {
        Rider_Aprilia_Racing()
    }
}
