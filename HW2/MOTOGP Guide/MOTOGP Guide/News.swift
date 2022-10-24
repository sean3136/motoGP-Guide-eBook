//
//  News.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI

struct News: View {
    var body: some View {
        NavigationView() {
            ScrollView{
                VStack {
                    HStack {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .padding(.leading)
                        Spacer()
                        Image("fim")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .padding(.trailing)
                    }
                    .padding(.top, -45.0)
                    Image("news_head")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width)
                        .ignoresSafeArea()
                    
                    Text("Martin claims stunning pole as Bagnaia crash")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack {
                            VStack {
                                NavigationLink(){
                                    News_martin()
                                } label: {
                                    Image("news_1")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 200, height:300)
                                        .padding(.horizontal, -10.0)
                                }
                            }
                            
                            VStack {
                                NavigationLink(){
                                    News_sign()
                                } label: {
                                    Image("news_2")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 200, height:300)
                                        .padding(.horizontal, -10.0)
                                }
                            }
                            
                            VStack {
                                NavigationLink(){
                                    News_sign2()
                                } label: {
                                    Image("news_3")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 200, height:300)
                                        .padding(.horizontal, -10.0)
                                }
                            }
                            
                            VStack {
                                NavigationLink(){
                                    News_boat()
                                } label: {
                                    Image("news_4")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 200, height:300)
                                        .padding(.horizontal, -10.0)
                                }
                            }
                            
                        }
                    }
                    Text("Two MotoGP™ World Championship contenders crashed and another qualified all the way back on the fourth row as Jorge Martin (Prima Pramac Racing) shattered the All Time Lap Record in Q2 at the Sepang International Circuit. Championship leader Francesco Bagnaia (Ducati Lenovo Team) masterfully got himself out of Q1 only to drop his Desmosedici on its front end while on track to go to provisional pole at the start of his second run in Q2 at the PETRONAS Grand Prix of Malaysia. He would be classified ninth but still out-qualified title rivals Alex Espargaro (Aprilia Racing) and Fabio Quartararo (Monster Energy Yamaha MotoGP™), the former of whom went down at Turn 8 and the latter of whom could only take 12th on the grid.")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .lineSpacing(4)
                        .padding()
                        .padding(.top, -2.0)
                    
                    Text("Martin starts strongly as Bagnaia crashes")
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                    Text("When Q2 kicked off, Martin immediately stormed to a 1:58.021, almost three tenths of a second quicker than Quartararo’s All Time Lap Record of 1:58.303. Bagnaia was fastest in Q1 but had to start the second stanza of qualifying with a used soft Michelin slick on the back of his Ducati, and would be sixth at the end of the first runs on a 1:58.862. Still, he was ahead of his key rivals at that point, with Alex Espargaro eighth on a 1:58.935 and Quartararo, who had a finger strapped after a crash in FP4, 11th on a 1:59.215.")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .lineSpacing(4)
                        .padding([.leading, .bottom, .trailing])
                        .padding(.top, -2.0)
                    Image("news_5")
                        .resizable()
                        .scaledToFit()
                }
            }
        }
    }
}

struct News_Previews: PreviewProvider {
    static var previews: some View {
        News()
    }
}
