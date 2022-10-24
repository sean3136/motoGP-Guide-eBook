//
//  Rider_LCR Honda.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI

struct Rider_LCR_Honda: View {
    let riderls = [
        riderdata(number: "30", img: "30-Takaaki_Nakagami", name: "Takaaki Nakagami", flag: "JP", color: "red"),
        riderdata(number: "73", img: "73_Alex_Marquez", name: "Alex Marquez", flag: "ES", color: "green")
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

struct Rider_LCR_Honda_Previews: PreviewProvider {
    static var previews: some View {
        Rider_LCR_Honda()
    }
}
