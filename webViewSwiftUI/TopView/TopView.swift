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
                ZStack {
                    Color("ColortoolBar")
                        .frame(height: 40)
                    HStack(content: {
                        Text("№").frame(width: 20, alignment: .center)
                        Text("Country").frame(width: 65, alignment: .leading)
                        Text("Name").frame(width: 70, alignment: .leading)
                        Text("Deposit").frame(width: 90, alignment: .trailing)
                        Text("Profit").frame(width: 90, alignment: .trailing)
                    }).padding(4)
                        .foregroundStyle(.white)
                    
                }
                List(tops) { top in
                    HStack {
                        Text("\(top.id)")
                            .frame(width: 20, alignment: .center)
                        Text("\(top.country)")
                            .frame(width: 65, alignment: .leading)
                        Text("\(top.name)")
                            .frame(width: 70, alignment: .leading)
                        Text("\(top.deposite)$")
                            .frame(width: 90, alignment: .trailing)
                        Text("\(top.profit)$")
                            .frame(width: 90, alignment: .trailing)
                            .foregroundStyle(.green)
                    }.foregroundStyle(.white)
                        .onAppear(perform: {
                            Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { Timer in
                                
                                let i = Int.random(in: 0...9)
                                tops[i].deposite += Int.random(in: -50...50)
                                tops[i].profit += Int.random(in: -50...50)
                                
                            }
                        })
                    
                    
                    
                    
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
