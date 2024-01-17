//
//  ContactsViewModel.swift
//  TestSwiftData
//
//  Created by Юрий Куринной on 16.01.2024.
//

import SwiftUI
import SwiftData

// MARK: - ContactsViewModel

final class ContactsViewModel: ObservableObject {
    
    // MARK: - Public properties
    
    @Published var isPresented = false
    @Published var name = Constants.emptyString
    @Published var surname = Constants.emptyString
    @Published var phone = Constants.emptyString
    @Published var email = Constants.emptyString
    
    // MARK: - Public methods
    
    func deleteContact(offsets: IndexSet,
                       modelContext: ModelContext,
                       contacts: [Contact]) {
        withAnimation {
            for index in offsets {
                modelContext.delete(contacts[index])
            }
        }
    }
}
