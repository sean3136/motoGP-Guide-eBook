//
//  Rider_Repsol Honda.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI

struct Rider_Repsol_Honda: View {
    let riderls = [
        riderdata(number: "44", img: "44_Pol_Espargaro", name: "Pol Espargaro", flag: "ES", color: "orange"),
        riderdata(number: "93", img: "93_Marc_Marquez", name: "Marc Marquez", flag: "ES", color: "orange")
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

struct Rider_Repsol_Honda_Previews: PreviewProvider {
    static var previews: some View {
        Rider_Repsol_Honda()
    }
}
