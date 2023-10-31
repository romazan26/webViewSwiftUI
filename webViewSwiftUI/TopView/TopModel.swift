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
    var deposite: Int
    var profit: Int
    
    static func getTop() -> [Top] {
        [
            Top(id: 1, country: "usa", name: "Oliver", deposite: 1200, profit: 3500),
            Top(id: 2, country: "japan", name: "Jack", deposite: 10000, profit: 20000),
            Top(id: 3, country: "Russian", name: "Oleg", deposite: 32999, profit: 43999),
            Top(id: 4, country: "Canada", name: "Harry", deposite: 11000, profit: 23450),
            Top(id: 5, country: "japan", name: "Jacob", deposite: 10000, profit: 20400),
            Top(id: 6, country: "Russian", name: "Charley", deposite: 30090, profit: 47900),
            Top(id: 7, country: "usa", name: "Thomas", deposite: 1450, profit: 35700),
            Top(id: 8, country: "japan", name: "George", deposite: 10600, profit: 20800),
            Top(id: 9, country: "Russian", name: "Oscar", deposite: 12400, profit: 33450),
            Top(id: 10, country: "Russian", name: "James", deposite: 30500, profit: 12000)
        ]
    }
}
