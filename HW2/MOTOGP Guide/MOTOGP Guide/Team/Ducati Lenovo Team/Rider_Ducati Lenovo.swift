//
//  Rider_Ducati Lenovo.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI

struct Rider_Ducati_Lenovo: View {
    let riderls = [
        riderdata(number: "43", img: "43-Jack-Miller-Rider_DS_4907", name: "Jack Miller", flag: "AU", color: "red"),
        riderdata(number: "63", img: "63_Francesco_Bagnaia", name: "Francesco Bagnaia", flag: "IT", color: "red")
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

struct Rider_Ducati_Lenovo_Previews: PreviewProvider {
    static var previews: some View {
        Rider_Ducati_Lenovo()
    }
}
