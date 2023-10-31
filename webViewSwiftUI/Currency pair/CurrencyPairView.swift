//
//  CurrencyPairView.swift
//  webViewSwiftUI
//
//  Created by Роман on 30.10.2023.
//

import SwiftUI

struct CurrencyPairView: View {
    @State  var curs: String
    
    var body: some View {
        ZStack{
            Color("backGroundApp")
                .ignoresSafeArea()
            VStack(spacing: 50) {
                HStack {
                    NavigationLink("<", destination: TradeView(curs: curs))
                        .foregroundStyle(.white)
                        .font(.title)
                        .bold()
                    Spacer()
                    Text("CurrencyPair")
                        .foregroundStyle(.white)
                        .bold()
                    .font(.title)
                    Spacer()
                }
                Spacer()
                
                HStack(spacing: 100) {
                    VStack(spacing: 50) {
                        ButtonCurray(curs: $curs, colorButton: Color("ColorOnText"), nameCurs: "EUR / USD")
                        ButtonCurray(curs: $curs, colorButton: Color("ColorOnText"), nameCurs: "XAU / USD")
                        ButtonCurray(curs: $curs,colorButton: Color("ColorOnText"), nameCurs: "GPB / USD")
                        ButtonCurray(curs: $curs,colorButton: Color("ColorOnText"), nameCurs: "BTC / USD")
                        ButtonCurray(curs: $curs,colorButton: Color("ColorOnText"), nameCurs: "JPY / USD")
                        ButtonCurray(curs: $curs,colorButton: Color("ColorOnText"), nameCurs: "XPR / USD")
                        ButtonCurray(curs: $curs,colorButton: Color("ColorOnText"), nameCurs: "BNB / USD")
                    }
                    VStack(spacing: 50) {
                        ButtonCurray(curs: $curs,colorButton: Color("ColorOnText"), nameCurs: "VIX")
                        ButtonCurray(curs: $curs,colorButton: Color("ColorOnText"), nameCurs: "SPX")
                        ButtonCurray(curs: $curs,colorButton: Color("ColorOnText"), nameCurs: "NDQ")
                        ButtonCurray(curs: $curs,colorButton: Color("ColorOnText"), nameCurs: "DXY")
                        ButtonCurray(curs: $curs,colorButton: Color("ColorOnText"), nameCurs: "DJI")
                        ButtonCurray(curs: $curs,colorButton: Color("ColorOnText"), nameCurs: "TSLA")
                        ButtonCurray(curs: $curs,colorButton: Color("ColorOnText"), nameCurs: "AAPL")
                    }
                }
                Spacer()
                    .navigationBarBackButtonHidden(true)
            }.padding()
            
            
        }
    }
}

#Preview {
    CurrencyPairView(curs: "BTC/USD" )
}

struct ButtonCurray: View {
    @Binding var curs: String
    @State var colorButton: Color
    let nameCurs: String
    
    var body: some View {
        
        Button(nameCurs) {
            curs = nameCurs
            colorButton = Color(.green)
        }.foregroundStyle(.white)
            .background(Color(colorButton)
                .frame(width: 140, height: 54)
                .cornerRadius(10))
    }
}
