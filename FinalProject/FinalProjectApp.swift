//
//  FinalProjectApp.swift
//  FinalProject
//
//  Created by Scholar on 26/07/2024.
//

import SwiftUI

@main
struct FinalProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: coreDataForFridge.self)
        }
    }
}
