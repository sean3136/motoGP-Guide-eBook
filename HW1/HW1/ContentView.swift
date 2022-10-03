//
//  ContentView.swift
//  HW1
//
//  Created by 李炘杰 on 2022/10/2.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: .top){
            Image("back_img")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Text("Keelung City")
                    .font(.system(size:35))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                Text("27°")
                    .font(.system(size:100))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                Text("Mostly Clear")
                    .font(.system(size:20))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                Text("H:32° L:25°")
                    .font(.system(size:20))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(.bottom)
                GroupBox(label:Text("Clear conditions tonight, continuing through the morning.")
                    .foregroundColor(.white)
                    .font(.system(size:15))
                    .fontWeight(.bold)) {
                        Divider()
                        HStack{
                            VStack{
                                Text("Now")
                                Image(systemName: "moon.stars.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 29)
                                Text("27°")
                            }
                            .frame(maxWidth: .infinity)
                            VStack{
                                Text("01")
                                Image(systemName: "moon.stars.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 28)
                                Text("27°")
                            }
                            .frame(maxWidth: .infinity)
                            VStack{
                                Text("02")
                                Image(systemName: "moon.stars.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 28)
                                Text("26°")
                            }
                            .frame(maxWidth: .infinity)
                            VStack{
                                Text("03")
                                Image(systemName: "moon.stars.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 28)
                                Text("26°")
                            }
                            .frame(maxWidth: .infinity)
                            VStack{
                                Text("04")
                                Image(systemName: "moon.stars.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 28)
                                Text("26°")
                            }
                            .frame(maxWidth: .infinity)
                            VStack{
                                Text("05")
                                Image(systemName: "moon.stars.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 28)
                                Text("26°")
                            }
                            
                            .frame(maxWidth: .infinity)
                        }
                        
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .groupBoxStyle(ColoredGroupBox())
                    
                    
                GroupBox(label:
                        Label("10-DAY FORCAST", systemImage: "calendar")
                    .foregroundColor(.gray)
                    .font(.system(size:12))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    ) {
                        ScrollView(.vertical, showsIndicators: true) {
                            Divider()
                        
                            HStack{
                                Text("Today")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(maxWidth: 90, alignment: .leading)
                                Image(systemName: "sun.max.fill")
                                    .foregroundColor(Color.yellow)
                                HStack{
                                    Text("25°")
                                        .foregroundColor(Color.gray)
                                    Image("thermal_scale1")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:100)
                                    Text("32°")
                                        .foregroundColor(Color.white)
                                        
                                }
                                .frame(maxWidth: .infinity)
                                
                            }
                            Divider()
                        
                            HStack{
                                Text("Mon")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: 90, alignment: .leading)
                                    .foregroundColor(Color.white)
                                Image(systemName: "sun.max.fill")
                                    .foregroundColor(Color.yellow)
                                HStack{
                                    Text("26°")
                                        .foregroundColor(Color.gray)
                                    Image("thermal_scale2")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:100)
                                    Text("32°")
                                        .foregroundColor(Color.white)
                                }
                                .frame(maxWidth: .infinity)
                                
                            }
                            Divider()
                        
                            HStack{
                                Text("Tue")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: 90, alignment: .leading)
                                    .foregroundColor(Color.white)
                                Image(systemName: "sun.max.fill")
                                    .foregroundColor(Color.yellow)
                                HStack{
                                    Text("24°")
                                        .foregroundColor(Color.gray)
                                    Image("thermal_scale3")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:100)
                                    Text("32°")
                                        .foregroundColor(Color.white)
                                }
                                .frame(maxWidth: .infinity)
                                
                            }
                            Divider()
                        
                            HStack{
                                Text("Wed")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: 81, alignment: .leading)
                                    .foregroundColor(Color.white)
                                VStack{
                                    Image(systemName: "cloud.bolt.rain.fill")
                                        .foregroundStyle(.white, Color(red: 0.5058823529411764, green: 0.8117647058823529, blue: 0.9803921568627451), .white)
                                    Text("80%")
                                        .font(.system(size:12))
                                        .fontWeight(.heavy)
                                        .foregroundColor(Color(red: 0.5058823529411764, green: 0.8117647058823529, blue: 0.9803921568627451))
                                }
                                HStack{
                                    Text("23°")
                                        .foregroundColor(Color.gray)
                                    Image("thermal_scale4")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:100)
                                    Text("27°")
                                        .foregroundColor(Color.white)
                                }
                                .frame(maxWidth: .infinity)
                                
                            }
                            
                            Divider()
                            HStack{
                                Text("Thu")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: 90, alignment: .leading)
                                    .foregroundColor(Color.white)
                                Image(systemName: "cloud.fill")
                                    .foregroundColor(Color.white)
                                HStack{
                                    Text("24°")
                                        .foregroundColor(Color.gray)
                                    Image("thermal_scale1")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:100)
                                    Text("32°")
                                        .foregroundColor(Color.white)
                                }
                                .frame(maxWidth: .infinity)
                                
                            }
                            
                        
                        }
                    }
                    .groupBoxStyle(ColoredGroupBox())
                    
                Divider()
                HStack{
                    
                    Image(systemName: "map")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 26, height:24, alignment: .top)
                        .foregroundColor(.white)
                        
                    Spacer()
                        
                    HStack{
                        Image(systemName: "location.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.gray)
                            .frame(maxHeight: 10)
                            
                        Image(systemName: "ellipsis", variableValue: 0.1)
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(maxHeight: 30)
                    }
                    .frame(maxWidth: 50, maxHeight: 40)
                    Spacer()
                    
                    Image(systemName: "list.bullet")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height:23, alignment: .top)
                        .foregroundColor(.white)
                }
                
            }
            .padding(.horizontal)
            .padding(.bottom, 0.5)
            
            
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environment(\.colorScheme, .dark)
        }
    }
   
    struct ColoredGroupBox: GroupBoxStyle {
        func makeBody(configuration: Configuration) -> some View {
            VStack {
                HStack {
                    configuration.label
                        .font(.headline)
                    Spacer()
                }
                
                configuration.content
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 8, style: .continuous)
                .fill(Color(red: 0.5058823529411764, green: 0.8117647058823529, blue: 0.9803921568627451).opacity(0.1)))
        }
    }
    
   
}
