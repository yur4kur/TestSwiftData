//
//  NewContactView.swift
//  TestSwiftData
//
//  Created by Юрий Куринной on 17.01.2024.
//

import SwiftUI

// MARK: - NewContactView

struct NewContactView: View {
    
    // MARK: - Public properties
    
    @ObservedObject var viewModel: ContactsViewModel
    
    // MARK: - Private properties
    
    @Environment(\.modelContext) private var modelContext
    
    // MARK: - Body
    
    var body: some View {
        NavigationStack {
            List {
                
                // MARK: Person image
                HStack {
                    Spacer()
                    PersonImageView()
                        .opacity(0.1)
                    Spacer()
                }
                
                // MARK: Textfields
                VStack {
                    TextField("Name", text: $viewModel.name)
                    TextField("Surname", text: $viewModel.surname)
                    TextField("Phone number", text: $viewModel.phone)
                    TextField("E-mail", text: $viewModel.email)
                }
            }
            
            // MARK: Toolbar Buttons
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        viewModel.isPresented.toggle()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                            let newContact = Contact(
                                name: viewModel.name,
                                surname: viewModel.surname,
                                phoneNumber: viewModel.phone,
                                email: viewModel.email
                            )
                            modelContext.insert(newContact)
                            viewModel.isPresented.toggle()
                    }
                }
            }
        }
        
    }
}

// MARK: - Preview
#Preview {
    NewContactView(
        viewModel: ContactsViewModel()
    )
}
