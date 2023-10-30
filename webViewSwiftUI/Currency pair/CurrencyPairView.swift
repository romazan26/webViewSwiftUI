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
            VStack {
                Text("CurrencyPair")
                    .foregroundStyle(.white)
                    .bold()
                    .font(.title)
                Spacer()
                NavigationLink("GRP", destination: TradeView(curs: "GRR"))
                    .foregroundStyle(.white)
                Spacer()
            }.padding()
            
            
        }
    }
}

#Preview {
    CurrencyPairView(curs: "BTC/USD" )
}
