//
//  ContentView.swift
//  Xpendi (iOS)
//
//  Created by Ananya George on 9/30/21.
//

import SwiftUI

struct ContentView: View {
    var balanceSheet: [Balance] = [Balance(amount: 567.8, title: "paid for popcorn", action: .withdrawal)]
    @State var searchString: String = ""
    
    var body: some View {
        VStack {
            if #available(iOS 15.0, *) {
                HStack {
                    TextField(text: $searchString) {
                            Text("\(Image(systemName: "magnifyingglass")) Search")
                    }.padding()
                    if(searchString != "") {
                        Button(action: {
                            searchString = ""
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.gray)
                        }.padding()
                    }
                }
                
            }
            List {
                ForEach(balanceSheet) {
                    if(searchString == "") {
                        Text("\($0.title )")
                            .foregroundColor($0.action.color)
                    } else if($0.title.lowercased().contains(searchString.lowercased())){
                        Text("\($0.title )")
                            .foregroundColor($0.action.color)
                    }
                }
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
