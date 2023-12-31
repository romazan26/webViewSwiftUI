//
//  TradeView.swift
//  webViewSwiftUI
//
//  Created by Роман on 18.10.2023.
//

import SwiftUI

struct TradeView: View {
    @State private var isLoading = true
    @State private var balance = "10000"
    @State private var timer = "10:00"
    @State private var Investment = "1000"
    @State var curs = "BTC/USD"
    @State private var showAlert = false
    
    @FocusState private var keyboardIsFocused: Bool
    var body: some View {
        NavigationStack {
            ZStack {
                Color("backGroundApp")
                    .ignoresSafeArea()
                VStack(spacing: 16) {
                    Text("Trade")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                    VStack {
                        Text("Balance")
                            .foregroundColor(.gray)
                            .font(.title2)
                        
                        Text(balance)
                            .foregroundColor(.white)
                            .font(.title2)
                            .bold()
                        
                    }.costomStyle()
                    
                    WebView(urlString: widgetForex.htmlString, isLoading: $isLoading)
                       .frame(width: 450, height: 300)
                       .border(Color("backGroundApp"), width: 20)
                    
                    NavigationLink(curs, destination: CurrencyPairView(curs: curs))
                        .costomStyle()
                        .foregroundStyle(.white)
                        .bold()
                        
                    
                    HStack(spacing: 60) {
                        VStack {
                            Text(" Timer  ")
                                .foregroundColor(.white)
                            HStack{
                                Image(systemName: "minus.circle")
                                TextField("10:00", text: $timer)
                                    .keyboardType(.numberPad)
                                    .frame(width: 50)
                                    .foregroundColor(.white)
                                    .bold()
                                    .focused($keyboardIsFocused)
                                Image(systemName: "plus.circle")
                            }
                        
                        }.background(Color("ColorOnText")
                            .frame(width: 150, height: 65)
                        .cornerRadius(10))
                
                        VStack {
                            Text(" Investment  ")
                                .foregroundColor(.white)
                            HStack{
                                
                                Image(systemName: "minus.circle")
                                
                                TextField("1,000", text: $Investment)
                                    .keyboardType(.numberPad)
                                    .frame(width: 50)
                                    .foregroundColor(.white)
                                    .bold()
                                    
                                Image(systemName: "plus.circle")
                            }
                        
                        }.background(Color("ColorOnText")
                            .frame(width: 150, height: 65)
                        .cornerRadius(10))
                        
                        
                    }
                    .padding()
                        .focused($keyboardIsFocused)
                    
                    HStack{
                        
                        Button(action: {showAlert.toggle()}, label: {
                            Text("Sell")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }).background(Color(.red)
                            .frame(width: 152, height: 54)
                        .cornerRadius(10))
                        .padding(.horizontal, 50)
                        
                        Button(action: {
                            balance = "\((Int(balance)!) - (Int(Investment))!)"
                            showAlert.toggle()
                        },
                               label: {
                            Text("Buy")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }).background(Color(.green)
                            .frame(width: 152, height: 54)
                            .cornerRadius(10))
                        .padding(.horizontal, 45)
                    }
                }
                
                if isLoading {
                    ProgressView()
                }
                
            }.onTapGesture {
                keyboardIsFocused = false
        }
        }.alert(isPresented: $showAlert, content: {
            Alert(title: Text("successfully"))
        })
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    TradeView()
}
struct BGViewModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .background(Color("ColorOnText")
                .frame(width: 314, height: 54)
                .cornerRadius(10))
    }
}

extension View {
    func costomStyle() -> some View {
        modifier(BGViewModifier())
    }
}
