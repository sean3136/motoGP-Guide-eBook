//
//  Home.swift
//  MOTOGP Guide
//
//  Created by 李炘杰 on 2022/10/23.
//

import SwiftUI
let hisimg = ["1949", "1950", "1961", "1966", "1975", "1979", "1980s", "2000s", "2012"]
struct Home: View {
    @State var currentIndex = 0
    @GestureState var dragOffset: CGFloat = 0
    var body: some View {
        GeometryReader { outerView in
            VStack {
                HStack(spacing: 0) {
                    ForEach(imageModels.indices, id: \.self) { index in
                        GeometryReader { innerView in
                            CardView(image: imageModels[index].image)
                        }
                        .padding(.horizontal)
                        .frame(width: outerView.size.width)
                    }
                    
                }
                .frame(width: outerView.size.width, height: 250, alignment: .leading)
                .offset(x: -CGFloat(self.currentIndex) * outerView.size.width)
                .offset(x: self.dragOffset)
                .gesture(
                    DragGesture()
                        .updating(self.$dragOffset, body: { value, state, transaction in
                            state = value.translation.width
                        })
                        .onEnded({ value in
                            let threshold = outerView.size.width * 0.65
                            var newIndex = Int(-value.translation.width / threshold) + self.currentIndex
                            newIndex = min(max(newIndex, 0), imageModels.count - 1)
                            self.currentIndex = newIndex
                        })
                )
                ScrollView {
                    VStack {
                        Group {
                            Group {
                                Text("  Grand Prix motorcycle racing is the premier class of motorcycle road racing events held on road circuits sanctioned by the Fédération Internationale de Motocyclisme (FIM). Independent motorcycle racing events have been held since 1949")
                                Text("1949: The (unofficial) birth of MotoGP")
                                    .fontWeight(.bold)
                                    .font(.title3)
                                    .padding(.vertical)
                                Text("  In 1949, the Federation Internationale de Motocyclisme (FIM)was founded. It arranged what would be the first proper championships for 125cc, 250cc, 350cc, and 500cc bikes (oh, and 600cc sidecars), with the first race held on the already famous Isle of Man TT course.\n    British rider and former Lancaster Bomber pilot, Leslie Graham, won the first ever 500cc title on a British-built AJS machine. His compatriot, Freddie Frith, won the inaugural 350cc title on a Velocette.")
                                Text("1950–1975: Italian dominance")
                                    .fontWeight(.bold)
                                    .font(.title3)
                                    .padding(.vertical)
                                Text("  In the first 26 years of the 500cc class of Grand Prix motorcycle racing, Italian manufacturers won the title 24 times. MV Agusta and Gilera carried Giacomo Agostini, John Surtees,and Mike Hailwood to multiple world championship wins.\n    In the other classes, competition was much fiercer however, and manufacturers such as Honda, Suzuki, Norton, and NSU managed to win their own titles.")
                            }
                            .fontWeight(.medium)
                            .lineSpacing(8)
                            .padding(.horizontal)
                            Group {
                                Text("Late 1960s: Cost and power cutting")
                                    .fontWeight(.bold)
                                    .font(.title3)
                                    .padding(.vertical)
                                Text("  The 1960s saw Giacomo Agostini win four of his eight 500cc world titles, and two of his eight 350cc championships. Italian bikes were still quickest in the premier class, but in 1966 Honda became the first Japanese manufacturer to win a 500cc Grand Prix. Yamaha and Suzuki were also beginning to win races and titles in the other classes.\n    Despite the close competition, in 1967 the FIM decided that the rising costs of manufacturing bikes needed to be curbed. This move angered the Japanese works teams, and Honda, Suzuki and Yamaha left Grand Prix motorcycle racing, leaving MV Agusta to dominate the 500cc class.")
                            }
                            .fontWeight(.medium)
                            .lineSpacing(8)
                            .padding(.horizontal)
                            Group {
                                Text("1979: Honda returns with four-stroke technology")
                                    .fontWeight(.bold)
                                    .font(.title3)
                                    .padding(.vertical)
                                Text("  After bowing out of the sport in 1967, Honda returned to premier class Grand Prix motorcycle racing in 1979. In an attempt to do things differently, it went against the grain by opting for a four-stroke engine, instead of the now popular two-stroke.\n The result? Not great. Honda's four-stroke didn't make an appearance until the 1979 British Grand Prix – the 11th race of the season – where both Honda bikes promptly retired.")
                                Text("1980s: American and Australian stars on Japanese bikes")
                                    .fontWeight(.bold)
                                    .font(.title3)
                                    .padding(.vertical)
                                Text("  The 1980s were a glamorous decade for Grand Prix motorcycle racing, and delivered some of the greatest battles ever seen on two wheels.\n   Wayne Rainey, Freddie Spencer, Eddie Lawson, and Wayne Gardner fought a series of intense spectacles on Yamaha and Honda bikes, helping to boost the sport's global audience. For many motorcycle racing fans across the world, these colourful characters represent the golden days of the sport.")
                                Text("2000s: The official birth of MotoGP")
                                    .fontWeight(.bold)
                                    .font(.title3)
                                    .padding(.vertical)
                                Text("  Following Honda's dominance of 500cc Grand Prix racing in the 1990s, the new millennium saw massive changes to the sport. Valentino Rossi won his first premier class 500cc title in 2001, and then the following year, the sport was officially rebranded MotoGP.\n    The rebrand saw sweeping changes and new technical regulations. Four-stroke engines were reintroduced, and the size of premier class MotoGP bikes increased to 990cc. Rossi went on to win the newly badged MotoGP title for four years in a row between 2001 and 2005.\n   In 2007, MotoGP's technical regulations were tweaked again, lowering engine capacity to 800cc. Australia's Casey Stoner took full advantage, winning the title with Italian manufacturer Ducati and breaking the three-decade dominance of Japanese-built machines.")
                            }
                            .fontWeight(.medium)
                            .lineSpacing(8)
                            .padding(.horizontal)
                        }
                    }
                }
            }
        }
    }
}

struct CardView: View {
    let image: String
    var body: some View {
        GeometryReader { geometry in
            Image(image)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .frame(width: geometry.size.width)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
