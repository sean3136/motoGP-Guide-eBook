//
//  teamicon.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI

struct teamicon: View {
    let team: teamdata
    var body: some View {
        VStack{
            Image(team.img)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width:300)
            NavigationLink {
                switch team.name {
                    case "Aprilia Racing": Rider_Aprilia_Racing()
                    case "Ducati Lenovo Team": Rider_Ducati_Lenovo()
                    case "Gresini Racing MotoGP™": Rider_Gresini_Racing()
                    case "LCR Honda": Rider_LCR_Honda()
                    case "Mooney VR46 Racing Team": Rider_Mooney_VR46()
                    case "Prima Pramac Racing": Rider_Prima_Pramac_Racing()
                    case "Repsol Honda Team": Rider_Repsol_Honda()
                    case "Red Bull KTM Factory Racing": Rider_Red_Bull_KTM()
                    case "WithU Yamaha RNF MotoGP™ Team": Rider_WithU_Yamaha()
                    case "Team SUZUKI ECSTAR": Rider_Suzuki()
                    case "Tech3 KTM Factory Racing": Rider_Tech3_KTM()
                    case "Monster Energy Yamaha MotoGP™": Rider_Monster_Yamaha()
                    default: Team()
                }
            } label: {
                Text(team.name)
                    .font(.custom("", size: 40))
                    .foregroundColor(Color(colorname: team.color))
                    .multilineTextAlignment(.center)
            }
        }
    }
}

extension Color {
    init?(colorname: String) {
        switch colorname {
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

struct teamicon_Previews: PreviewProvider {
    static var previews: some View {
        teamicon(team: .dt)
    }
}
