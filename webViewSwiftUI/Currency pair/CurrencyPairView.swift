//
//  CurrencyPairView.swift
//  webViewSwiftUI
//
//  Created by Роман on 30.10.2023.
//

import SwiftUI

struct CurrencyPairView: View {
    var curs: String
    var body: some View {
        ZStack{
            Color("backGroundApp")
                .ignoresSafeArea()
            VStack(spacing: 50) {
                Text("CurrencyPair")
                    .foregroundStyle(.white)
                    .bold()
                    .font(.title)
                Spacer()
                NavigationLink("GRP", destination: TradeView(curs: "GRR"))
                    .foregroundStyle(.white)
                    .costomStyle()
                NavigationLink("EUR / USD", destination: TradeView(curs: "EUR / USD"))
                    .foregroundStyle(.white)
                    .costomStyle()
                NavigationLink("GPB / USD", destination: TradeView(curs: "GPB / USD"))
                    .foregroundStyle(.white)
                    .costomStyle()
                Spacer()
            }.padding()
            
            
        }
    }
}

#Preview {
    CurrencyPairView(curs: "BTC/USD" )
}
