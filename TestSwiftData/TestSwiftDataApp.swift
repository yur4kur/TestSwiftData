//
//  TestSwiftDataApp.swift
//  TestSwiftData
//
//  Created by Юрий Куринной on 16.01.2024.
//

import SwiftUI
import SwiftData

@main
struct TestSwiftDataApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Contact.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("\(Constants.containerError) \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContactsView()
        }
        .modelContainer(sharedModelContainer)
    }
}
