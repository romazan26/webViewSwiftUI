//
//  TopModel.swift
//  webViewSwiftUI
//
//  Created by Роман on 24.10.2023.
//

import Foundation

struct Top: Identifiable {
    
    let id: Int
    let country: String
    let name: String
    let deposite: Int
    let profit: Int
    
    static func getTop() -> [Top] {
        [
            Top(id: 1, country: "usa", name: "Oliver", deposite: 1200, profit: 3500),
            Top(id: 2, country: "japan", name: "Jack", deposite: 10000, profit: 20000),
            Top(id: 3, country: "Russian", name: "Oleg", deposite: 32999, profit: 43999)
        ]
    }
}
