//
//  riderdata.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import Foundation

struct riderdata: Identifiable{
    let id = UUID()
    let number: String
    let img: String
    let name: String
    let flag: String
    let color: String
}
extension riderdata {
    static var dr = riderdata(number: "20", img: "20-Fabio-Quartararo", name: "Fabio Quartararo", flag: "FR", color: "black")
}
