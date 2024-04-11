//
//  hikeApp.swift
//  hike
//
//  Created by kmac on 4/11/24.
//

import SwiftUI

@main
struct hikeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
