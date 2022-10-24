//
//  Rider_Gresini Racing.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI

struct Rider_Gresini_Racing: View {
    let riderls = [
        riderdata(number: "23", img: "23-Enea-Bastiani-Rider_DS_5148", name: "Enea Bastiani", flag: "IT", color: "gray"),
        riderdata(number: "49", img: "49-Fabio-DiGiananntonioRider_DS_5200", name: "Fabio DiGiananntonio", flag: "IT", color: "gray")
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

struct Rider_Gresini_Racing_Previews: PreviewProvider {
    static var previews: some View {
        Rider_Gresini_Racing()
    }
}
