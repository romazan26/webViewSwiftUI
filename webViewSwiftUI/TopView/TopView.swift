//
//  TopView.swift
//  webViewSwiftUI
//
//  Created by Роман on 18.10.2023.
//

import SwiftUI

struct TopView: View {
    
    @State private var tops = Top.getTop()
    
    var body: some View {
        
        ZStack {
            Color("backGroundApp")
                .ignoresSafeArea()
            VStack {
                
                Text("TOP 10 Traders")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                List(tops) { top in
                        HStack {
                            
                            Text("\(top.id)")
                                .frame(width: 20, alignment: .center)
                            Text("\(top.country)")
                                .frame(width: 60, alignment: .leading)
                            Text("\(top.name)")
                                .frame(width: 70, alignment: .leading)
                            Text("\(top.deposite)$")
                                .frame(width: 90, alignment: .trailing)
                            Text("\(top.profit)$")
                                .frame(width: 90, alignment: .trailing)
                                .foregroundStyle(.green)
                        }.foregroundStyle(.white)
                        
                    .listRowBackground(Color("backGroundApp"))
                    .padding(.vertical, 10)
                }.listStyle(.plain)
                    
                
                    
            }
            .padding()
        }
        
    }
}


#Preview {
    TopView()
}
