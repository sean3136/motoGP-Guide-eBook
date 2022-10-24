//
//  Rider_Mooney VR46.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI

struct Rider_Mooney_VR46: View {
    let riderls = [
        riderdata(number: "10", img: "10Luca_Marini", name: "Luca Marini", flag: "IT", color: "yellow"),
        riderdata(number: "72", img: "72_Marco_Bezzecchi", name: "Marco Bezzecchi", flag: "IT", color: "yellow")
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

struct Rider_Mooney_VR46_Previews: PreviewProvider {
    static var previews: some View {
        Rider_Mooney_VR46()
    }
}
