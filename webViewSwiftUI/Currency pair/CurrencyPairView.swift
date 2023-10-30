//
//  CurrencyPairView.swift
//  webViewSwiftUI
//
//  Created by Роман on 30.10.2023.
//

import SwiftUI

struct CurrencyPairView: View {
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
            }.padding()
            
            
        }
    }
}

#Preview {
    CurrencyPairView()
}
