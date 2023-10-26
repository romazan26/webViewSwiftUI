//
//  ProgressBarView.swift
//  webViewSwiftUI
//
//  Created by Роман on 26.10.2023.
//

import SwiftUI

struct ProgressBarView: View {
    var width: CGFloat = 200
    var height: CGFloat = 20
    var procent: CGFloat = 69
    var color = Color(.green)
    
    var body: some View {
        let multiplayer = width / 100
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: width, height: height)
            .foregroundColor(.black.opacity(0.1))
            
            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: procent * multiplayer, height: height)
                .foregroundColor(color)
                .padding(2)
            Text("\(Int(procent))%")
                .padding(width / 2 - 35)
                .bold()
                .font(.title2)
                .foregroundColor(.white)
                .padding()
                
        }
    }
}

#Preview {
    ProgressBarView()
}
