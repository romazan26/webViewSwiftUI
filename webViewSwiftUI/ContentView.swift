//
//  ContentView.swift
//  webViewSwiftUI
//
//  Created by Роман on 18.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
            TabView {
                TradeView()
                    .tabItem {
                        Image(systemName: "chart.xyaxis.line")
                        Text("Trade")
                    }
                TopView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Top")
                    }
            }
        
    }
    
}


#Preview {
    ContentView()
}
