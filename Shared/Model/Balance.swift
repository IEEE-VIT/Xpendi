//
//  Balance.swift
//  Xpendi (iOS)
//
//  Created by Ananya George on 9/30/21.
//

import Foundation
import SwiftUI

class Balance: Identifiable {
    var amount: Double
    var title: String
    var action: Action
    var date: Date
    
    init(amount: Double, title: String, action: Action, date: Date = Date()) {
        self.amount = amount
        self.title = title
        self.action = action
        self.date = date
    }
}

enum Action {
    case withdrawal
    case deposit
    
    var color: Color {
        switch self {
        case .withdrawal:
            return .red
        case .deposit:
            return .green
        }
    }
}

extension Balance {
    static var sampleData: [Balance] = [
        Balance(amount: 123.9, title: "Soda", action: .withdrawal),
        Balance(amount: 234.5, title: "Vinyl", action: .withdrawal, date: Date(timeIntervalSince1970: 1630303409)),
        Balance(amount: 456.7, title: "Lottery", action: .deposit)
    ]
}
