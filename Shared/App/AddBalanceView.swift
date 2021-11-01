//
//  AddBalanceView.swift
//  Xpendi
//
//  Created by Ananya George on 11/1/21.
//

import SwiftUI

struct AddBalanceView: View {
    @Binding var newBalance: Balance
    @State var textAmt: String = ""
    var body: some View {
        Form {
            Section {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Title")
                        .font(.headline)
                    TextField("Title",text: $newBalance.title)
                }
                    
                VStack(alignment: .leading, spacing: 10) {
                    Text("Amount")
                        .font(.headline)
                    TextField("Amount", text: $textAmt)
                        .keyboardType(.decimalPad)
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Transaction type")
                        .font(.headline)
                    Picker("Type of transaction", selection: $newBalance.action) {
                        Text("Withdrawal").tag(Action.withdrawal)
                        Text("Deposit").tag(Action.deposit)
                    }
                    .pickerStyle(.segmented)
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    DatePicker("Date", selection: $newBalance.date, displayedComponents: .date)
                        .font(.headline)
                }
            }
            
            
            
            
        }

        .navigationTitle("Add Item")
        
    }
}

struct AddBalanceView_Previews: PreviewProvider {
    static var previews: some View {
        AddBalanceView(newBalance: .constant(Balance.sampleData[0]))
    }
}
