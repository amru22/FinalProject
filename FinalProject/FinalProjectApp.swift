//
//  FinalProjectApp.swift
//  FinalProject
//
//  Created by Scholar on 26/07/2024.
//

import SwiftUI

@main
struct FinalProjectApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            startPage()
                .modelContainer(for: coreDataForFridge.self)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
