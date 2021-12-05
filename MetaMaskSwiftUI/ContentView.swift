//
//  ContentView.swift
//  MetaMaskSwiftUI
//
//  Created by Raphael Cerqueira on 04/12/21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex: Int = 0
    @Namespace var animation
    
    var body: some View {
        VStack {
            CustomNavigationView()
            
            VStack(spacing: 15) {
                Button {
                    
                } label: {
                    Image("avatar")
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .padding(4)
                        .background(Circle().stroke(Color("AccentColor"), lineWidth: 3))
                }
                
                Text("Account 2")
                    .font(.title)
                
                Text("$1,000,000.00")
                    .foregroundColor(.gray)
                
                Text("0x293...8c5a")
                    .font(.callout)
                    .foregroundColor(.gray)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 8)
                    .background(Capsule().fill(Color("SecondaryColor")))
                
                HStack(spacing: 8) {
                    ForEach(menuItems) { item in
                        Button {
                            
                        } label: {
                            VStack {
                                Circle()
                                    .fill(Color("AccentColor"))
                                    .frame(width: 45, height: 45)
                                    .overlay(
                                        Image(systemName: item.image)
                                            .foregroundColor(.white)
                                    )
                                
                                Text(item.title)
                                    .foregroundColor(Color("AccentColor"))
                                    .fontWeight(.medium)
                            }
                            .frame(width: 80)
                        }
                    }
                }
                
                TabView(selection: $selectedIndex) {
                    TokenView()
                        .tag(0)
                    
                    NFTView()
                        .tag(1)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .overlay(
                    VStack(spacing: 1) {
                        HStack {
                            ForEach(0 ..< tabItems.count) { i in
                                VStack {
                                    Text(tabItems[i].title)
                                        .foregroundColor(selectedIndex == i ? Color("AccentColor") : .gray)
                                        .fontWeight(.bold)
                                        .frame(maxWidth: .infinity)
                                    
                                    if selectedIndex == i {
                                        Rectangle()
                                            .fill(Color("AccentColor"))
                                            .frame(height: 3)
                                            .matchedGeometryEffect(id: "tab", in: animation)
                                    } else {
                                        Rectangle()
                                            .fill(Color.clear)
                                            .frame(height: 3)
                                    }
                                    
                                }
                                .onTapGesture {
                                    withAnimation {
                                        selectedIndex = i
                                    }
                                }
                            }
                        }
                        
                        Rectangle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 1.5)
                    }
                        .background(Color.white)
                    
                    , alignment: .top
                )
                .padding(.top)

            }
            
            Spacer()
        }
    }
}

struct TokenView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0) {
                ForEach(coins) { coin in
                    VStack {
                        HStack(spacing: 15) {
                            Image(coin.image)
                                .resizable()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text("\(coin.amount) \(coin.name)")
                                    .font(.title2)
                                    .fontWeight(.medium)
                                
                                Text(coin.dollar)
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                        }
                        .padding(.horizontal)
                        
                        Divider()
                    }
                }
                .padding(.top)
                
                VStack(spacing: 8) {
                    Text("Don't see your token?")
                        .foregroundColor(.gray)
                        .font(.title3)
                    
                    Button {
                        
                    } label: {
                        Text("ADICIONAR TOKENS")
                    }
                }
                .padding(.top)
            }
            .padding(.top, 35)
        }
    }
}

struct NFTView: View {
    var body: some View {
        VStack {
            Image("space")
                .resizable()
                .frame(width: 90, height: 90)
                .padding(8)
                .background(Circle().stroke(Color.gray.opacity(0.6), lineWidth: 5))
            
            Text("Nenhum NFT ainda")
                .font(.largeTitle.bold())
            
            Button {
                
            } label: {
                Text("Saiba mais")
                    .foregroundColor(Color("AccentColor"))
            }
        }
        .foregroundColor(Color.gray.opacity(0.6))
    }
}

struct CustomNavigationView: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.title)
                }
                
                Spacer()
                
                VStack(spacing: 4) {
                    Text("Carteira")
                        .font(.title)
                        .fontWeight(.light)
                    
                    HStack {
                        Circle()
                            .fill(Color.green)
                            .frame(width: 8, height: 8)
                        
                        Text("Etherem Main Network")
                            .font(.callout)
                            .fontWeight(.light)
                            .foregroundColor(.gray)
                    }
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "qrcode.viewfinder")
                        .font(.title)
                }
            }
            .padding(.horizontal)
            
            Divider()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
