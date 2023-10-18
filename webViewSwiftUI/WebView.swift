//
//  WedView.swift
//  webViewSwiftUI
//
//  Created by Роман on 18.10.2023.
//

import Foundation
import SwiftUI
import WebKit

struct WedView: UIViewRepresentable {
    
    let url: URL
    @Binding var isLoading: Bool
    
    func makeCoordinator() -> Coordinator {
            Coordinator(self)
        }
    
    func makeUIView(context: Context) -> some UIView {
       let webView = WKWebView()
        let request = URLRequest(url: url)
        webView.load(request)
        return webView
        
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    class Coordinator: NSObject, WKNavigationDelegate {
            var parent: WebView
            init(_ parent: WebView) {
                self.parent = parent
            }
            func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
                parent.isLoading = true
            }
            func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
                parent.isLoading = false
            }
        }
}
