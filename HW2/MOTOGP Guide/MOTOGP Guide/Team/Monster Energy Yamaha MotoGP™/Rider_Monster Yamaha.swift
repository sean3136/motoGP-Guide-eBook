//
//  Rider_Monster Yamaha.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI

struct Rider_Monster_Yamaha: View {
    let riderls = [
        riderdata(number: "20", img: "20-Fabio-Quartararo", name: "Fabio Quartararo", flag: "FR", color: "black"),
        riderdata(number: "21", img: "21_Franco_Morbidelli_MotoGP_Rider_DS_5702", name: "Franco Morbidelli", flag: "IT", color: "black")
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


struct Rider_Monster_Yamaha_Previews: PreviewProvider {
    static var previews: some View {
        Rider_Monster_Yamaha()
    }
}
