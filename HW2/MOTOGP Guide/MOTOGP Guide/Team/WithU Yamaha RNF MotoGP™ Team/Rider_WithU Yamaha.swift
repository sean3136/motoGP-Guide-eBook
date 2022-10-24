//
//  Rider_WithU Yamaha.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI

struct Rider_WithU_Yamaha: View {
    let riderls = [
        riderdata(number: "04", img: "04_Andrea_Dovizioso_MotoGP_DS_6569", name: "Andrea Dovizioso", flag: "IT", color: "black"),
        riderdata(number: "35", img: "35_Cal_Crutchlow", name: "Cal Crutchlow", flag: "GB", color: "black"),
        riderdata(number: "40", img: "40_Darryn_Binder", name: "Darryn Binder", flag: "ZA", color: "black")
        
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

struct Rider_WithU_Yamaha_Previews: PreviewProvider {
    static var previews: some View {
        Rider_WithU_Yamaha()
    }
}
