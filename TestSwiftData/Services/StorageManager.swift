//
//  StorageManager.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 28.12.2023.
//

import SwiftUI

// MARK: - StorageManager

final class StorageManager {
    
    // MARK: - Private wrapped properties
    
    @Environment(\.modelContext) private var modelContext
    
    // MARK: - Public methods
    
    func addPerson(person: Contact) {
        withAnimation {
            let newContact = person
            modelContext.insert(newContact)
        }
    }

    func deletePersons(contacts: [Contact], offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(contacts[index])
            }
        }
    }
}
