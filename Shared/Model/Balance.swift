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
    
    init(amount: Double, title: String, action: Action) {
        self.amount = amount
        self.title = title
        self.action = action
        self.date = Date()
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
