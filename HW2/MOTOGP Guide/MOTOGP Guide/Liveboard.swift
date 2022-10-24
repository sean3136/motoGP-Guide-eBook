//
//  Liveboard.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/24.
//

import SwiftUI

struct Liveboard: View {
    let riderls = [
        riderdata(number: "63", img: "63_Francesco_Bagnaia", name: "Francesco Bagnaia", flag: "IT", color: "red"),
        riderdata(number: "20", img: "20-Fabio-Quartararo", name: "Fabio Quartararo", flag: "FR", color: "black"),
        riderdata(number: "41", img: "41-Aleix-Espargaro-Rider_DS_5304", name: "Aleix Espargaro", flag: "ES", color: "green"),
        riderdata(number: "23", img: "23-Enea-Bastiani-Rider_DS_5148", name: "Enea Bastiani", flag: "IT", color: "gray"),
        riderdata(number: "43", img: "43-Jack-Miller-Rider_DS_4907", name: "Jack Miller", flag: "AU", color: "red"),
        riderdata(number: "33", img: "33_Brad_Binder", name: "Brad Binder", flag: "ZA", color: "orange"),
        riderdata(number: "05", img: "05JohannZarcoMotoGPRiderDS7766", name: "Johann Zarco", flag: "FR", color: "purple"),
        riderdata(number: "42", img: "42_Alex_Rins", name: "Alex Rins", flag: "ES", color: "blue"),
        riderdata(number: "88", img: "88_Miguel_Oliveira", name: "Miguel Oliveira", flag: "PT", color: "orange"),
        riderdata(number: "89", img: "89JorgeMartinMotoGPRiderDS7462", name: "Jorge Martin", flag: "ES", color: "purple"),
        riderdata(number: "12", img: "12_Maverick_Vinales_MotoGP_Rider_DS_5246", name: "Maverick  Vinales", flag: "ES", color: "green"),
        riderdata(number: "93", img: "93_Marc_Marquez", name: "Marc Marquez", flag: "ES", color: "orange"),
        riderdata(number: "10", img: "10Luca_Marini", name: "Luca Marini", flag: "IT", color: "yellow"),
        riderdata(number: "72", img: "72_Marco_Bezzecchi", name: "Marco Bezzecchi", flag: "IT", color: "yellow"),
        riderdata(number: "36", img: "36_Joan_Mir", name: "Joan Mir", flag: "ES", color: "blue"),
        riderdata(number: "44", img: "44_Pol_Espargaro", name: "Pol Espargaro", flag: "ES", color: "orange"),
        riderdata(number: "73", img: "73_Alex_Marquez", name: "Alex Marquez", flag: "ES", color: "green"),
        riderdata(number: "30", img: "30-Takaaki_Nakagami", name: "Takaaki Nakagami", flag: "JP", color: "red"),
        riderdata(number: "21", img: "21_Franco_Morbidelli_MotoGP_Rider_DS_5702", name: "Franco Morbidelli", flag: "IT", color: "black"),
        riderdata(number: "49", img: "49-Fabio-DiGiananntonioRider_DS_5200", name: "Fabio DiGiananntonio", flag: "IT", color: "gray"),
        riderdata(number: "04", img: "04_Andrea_Dovizioso_MotoGP_DS_6569", name: "Andrea Dovizioso", flag: "IT", color: "black"),
        riderdata(number: "40", img: "40_Darryn_Binder", name: "Darryn Binder", flag: "ZA", color: "black"),
        riderdata(number: "87", img: "87-Ramy-Garder_Rider_DS_5119", name: "Ramy Garder", flag: "GB", color: "orange"),
        riderdata(number: "35", img: "35_Cal_Crutchlow", name: "Cal Crutchlow", flag: "GB", color: "black"),
        riderdata(number: "25", img: "25-Raul-Fernandez-Rider_DS_5024", name: "Raul Fernandez", flag: "ES", color: "orange")
    ]
    
    let points = ["258", "235", "212", "211", "189", "168", "166", "148", "138", "136",
                  "122", "113", "111", "106", "77", "56", "50", "46", "36", "23", "15", "12", "10", "10", "10"]
    
    
    var body: some View {
        VStack {
            Text("Live Board")
                .font(.custom("NIKEA", size: 35))
            List {
                ForEach(0..<riderls.count, id:\.self) { (index) in
                    HStack {
                        if(index == 0) {
                            Text(riderls[index].number)
                                .foregroundColor(Color(c: riderls[index].color))
                            Text(riderls[index].name)
                                .foregroundColor(Color(c: riderls[index].color))
                            Text("\t")
                            Image(systemName: "crown")
                                .foregroundColor(Color.yellow)
                        }
                        else {
                            Text(riderls[index].number)
                                .foregroundColor(Color(c: riderls[index].color))
                            Text(riderls[index].name)
                                .foregroundColor(Color(c: riderls[index].color))
                        }
                        Spacer()
                        Text(points[index])
                    }
                }
            }
        }
    }
}

extension Color {
    init?(c: String) {
        switch c {
        case "clear":       self = .clear
        case "black":       self = .black
        case "white":       self = .white
        case "gray":        self = .gray
        case "red":         self = .red
        case "green":       self = .green
        case "blue":        self = .blue
        case "orange":      self = .orange
        case "yellow":      self = .yellow
        case "pink":        self = .pink
        case "purple":      self = .purple
        case "primary":     self = .primary
        case "secondary":   self = .secondary
        default:            return nil
        }
    }
}

struct Liveboard_Previews: PreviewProvider {
    static var previews: some View {
        Liveboard()
    }
}
