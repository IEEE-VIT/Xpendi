//
//  ContentView.swift
//  Xpendi (iOS)
//
//  Created by Ananya George on 9/30/21.
//

import SwiftUI

struct ContentView: View {
    var balanceSheet: [Balance] = [Balance(amount: 567.8, title: "paid for popcorn", action: .withdrawal)]
    var body: some View {
        List {
            ForEach(balanceSheet) {
                Text("\($0.title ?? "")")
                    .foregroundColor($0.action.color)
            }
        }
        .toolbar {
            #if os(iOS)
            EditButton()
            #endif

            Button(action: addItem) {
                Label("Add Item", systemImage: "plus")
            }
        }
    }
    private func addItem() {
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
