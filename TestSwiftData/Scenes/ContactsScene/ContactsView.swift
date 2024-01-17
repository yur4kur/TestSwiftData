//
//  ContactsView.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 27.12.2023.
//

import SwiftUI
import SwiftData

// MARK: - ContactsView

struct ContactsView: View {
   
    // MARK: - Private properties
    
    @Environment(\.modelContext) private var modelContext
    @Query private var contacts: [Contact]
    @StateObject private var viewModel = ContactsViewModel()
    @State private var isPresented = false
    
    // MARK: - Body
    
    var body: some View {
        NavigationStack {
            
            // MARK: List
            List {
                ForEach(contacts) { contact in
                    ContactLinkView(contact: contact)
                }
                .onDelete(perform: { indexSet in
                    viewModel.deleteContact(
                        offsets: indexSet,
                        modelContext: modelContext, 
                        contacts: contacts
                    )
                })
            }
            .listStyle(.plain)
            
            // MARK: NavigationBar
            .navigationTitle(Constants.contactsTitle)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: { viewModel.isPresented.toggle() }) {
                        Label(
                            Constants.addItemLabel,
                            systemImage: Constants.plusButton
                        )
                    }
                    .sheet(isPresented: $viewModel.isPresented, content: {
                        NewContactView(viewModel: viewModel)
                    })
                }
            }
        }
    }
}

// MARK: - Preview

#Preview {
    ContactsView()
}
