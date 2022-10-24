//
//  ImageModel.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import Foundation

struct imageModel: Identifiable {
    var id = UUID()
    var image: String
}

let imageModels = [
    imageModel(image: "1949"),
    imageModel(image: "1950"),
    imageModel(image: "1961"),
    imageModel(image: "1966"),
    imageModel(image: "1975"),
    imageModel(image: "1979"),
    imageModel(image: "1980s"),
    imageModel(image: "2000s"),
    imageModel(image: "2012")
]
