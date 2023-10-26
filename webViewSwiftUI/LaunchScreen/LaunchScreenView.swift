//
//  LaunchScreenView.swift
//  webViewSwiftUI
//
//  Created by Роман on 26.10.2023.
//

import SwiftUI

struct LaunchScreenView: View {
    
    @State private var progress = 0.0
    @State private var showAlert = false
    @State private var isPresented = false
    
    
    var body: some View {
        ZStack {
            Image("backpicture")
                .ignoresSafeArea()
            
            ProgressBarView(width: 300, height: 24, procent: progress, color: .green)
                .onAppear(perform: {
                    if !showAlert {
                        Timer.scheduledTimer(withTimeInterval: 0.05 , repeats: true) { timer in
                            if progress < 100 {
                                progress += 1
                            }else {timer.invalidate()
                            showAlert = true}
                        }
                    }
                })
                
            
            
        }.alert(isPresented: $showAlert, content: {
            Alert(
                title: Text("“App” would like to Send You Notifications").bold(),
                message: Text("Notifications may include alerts, sounds and icon badges. These can be configured in Settings."),
                primaryButton: .default(Text("Don't Allow"), action: {
                    isPresented.toggle()
                        
                }),
                secondaryButton: .cancel(Text("Allow"), action: {
                    isPresented.toggle()
                })
                  
            )})
        .fullScreenCover(isPresented: $isPresented, content: {
            ContentView()
        })
        .animation(.interactiveSpring)
    }
    
}

#Preview {
    LaunchScreenView()
}
