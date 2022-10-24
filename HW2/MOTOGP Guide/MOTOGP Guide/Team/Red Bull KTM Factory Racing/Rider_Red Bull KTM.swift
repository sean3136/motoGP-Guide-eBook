//
//  Rider_Red Bull KTM.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI

struct Rider_Red_Bull_KTM: View {
    let riderls = [
        riderdata(number: "33", img: "33_Brad_Binder", name: "Brad Binder", flag: "ZA", color: "orange"),
        riderdata(number: "88", img: "88_Miguel_Oliveira", name: "Miguel Oliveira", flag: "PT", color: "orange")
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

struct Rider_Red_Bull_KTM_Previews: PreviewProvider {
    static var previews: some View {
        Rider_Red_Bull_KTM()
    }
}
