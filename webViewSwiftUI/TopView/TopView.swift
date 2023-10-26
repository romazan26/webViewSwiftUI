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
            Color.black
                .ignoresSafeArea()
            VStack {
                
                Text("TOP 10 Traders")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                List(tops) { top in
                    
                    HStack {
                        Text("\(top.id)")
                            .frame(width: 10, alignment: .leading)
                        Text("\(top.country)")
                            .frame(width: 80, alignment: .leading)
                        Text("\(top.name)")
                            .frame(width: 100, alignment: .leading)
                        Text("\(top.deposite)")
                            .frame(width: 80, alignment: .leading)
                        Text("\(top.profit)")
                            .frame(width: 80, alignment: .leading)
                    }
                    
                }.listStyle(.plain)
                    
            }
            .padding()
        }
        
    }
}


#Preview {
    TopView()
}
