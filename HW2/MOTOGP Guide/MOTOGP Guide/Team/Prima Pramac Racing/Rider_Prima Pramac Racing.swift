//
//  Rider_Prima Pramac Racing.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI

struct Rider_Prima_Pramac_Racing: View {
    let riderls = [
        riderdata(number: "05", img: "05JohannZarcoMotoGPRiderDS7766", name: "Johann Zarco", flag: "FR", color: "purple"),
        riderdata(number: "89", img: "89JorgeMartinMotoGPRiderDS7462", name: "Jorge Martin", flag: "ES", color: "purple")
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

struct Rider_Prima_Pramac_Racing_Previews: PreviewProvider {
    static var previews: some View {
        Rider_Prima_Pramac_Racing()
    }
}
