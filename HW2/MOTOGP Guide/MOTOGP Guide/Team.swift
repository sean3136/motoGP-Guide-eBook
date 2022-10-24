//
//  Team.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI

struct Team: View {
    let teamls = [
        teamdata(img: "Apriliaracing", name:"Aprilia Racing", color: "green"),
        teamdata(img: "ducatilenovo", name:"Ducati Lenovo Team", color: "red"),
        teamdata(img: "GresiniRacing", name:"Gresini Racing MotoGP™", color: "gray"),
        teamdata(img: "LCR", name:"LCR Honda", color: "red"),
        teamdata(img: "MooneyVR46", name:"Mooney VR46 Racing Team", color: "yellow"),
        teamdata(img: "PrimaPramacracing", name:"Prima Pramac Racing", color: "purple"),
        teamdata(img: "RepsolHonda", name:"Repsol Honda Team", color: "orange"),
        teamdata(img: "RedBullKTM", name:"Red Bull KTM Factory Racing", color: "orange"),
        teamdata(img: "RNF", name:"WithU Yamaha RNF MotoGP™ Team", color: "black"),
        teamdata(img: "Suzuki", name:"Team SUZUKI ECSTAR", color: "blue"),
        teamdata(img: "Tech3KTM", name:"Tech3 KTM Factory Racing", color: "orange"),
        teamdata(img: "Yamaha", name:"Monster Energy Yamaha MotoGP™", color: "black")
        
    ]
    var body: some View {
        TabView {
            ForEach(0..<teamls.count, id: \.self) { index in
                teamicon(team: teamls[index])
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}


struct Team_Previews: PreviewProvider {
    static var previews: some View {
        Team()
    }
}
