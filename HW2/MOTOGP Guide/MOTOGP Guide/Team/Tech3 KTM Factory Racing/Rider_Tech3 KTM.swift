//
//  Rider_Tech3 KTM.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI

struct Rider_Tech3_KTM: View {
    let riderls = [
        riderdata(number: "25", img: "25-Raul-Fernandez-Rider_DS_5024", name: "Raul Fernandez", flag: "ES", color: "orange"),
        riderdata(number: "87", img: "87-Ramy-Garder_Rider_DS_5119", name: "Ramy Garder", flag: "GB", color: "orange")
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


struct Rider_Tech3_KTM_Previews: PreviewProvider {
    static var previews: some View {
        Rider_Tech3_KTM()
    }
}
