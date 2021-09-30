//
//  XpendiApp.swift
//  Shared
//
//  Created by Ananya George on 9/30/21.
//

import SwiftUI

@main
struct XpendiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
