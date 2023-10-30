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
            Group {
                TradeView()
                
                    .tabItem {
                        Label("Trade", systemImage: "chart.xyaxis.line")
                    }
                
                
                TopView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Top")
                    }
            }
            .toolbarBackground(Color("ColortoolBar"), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            
            
        }
        
    }
    
}


#Preview {
    ContentView()
}
