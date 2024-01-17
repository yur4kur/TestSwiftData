//
//  DetailsView.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 27.12.2023.
//

import SwiftUI

// MARK: - DetailsView

struct DetailsView: View {
    
    // MARK: - Public properties
    
    let contact: Contact
    
    // MARK: - Body
    
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Spacer()
                    PersonImageView()
                    Spacer()
                }
                Label(contact.phoneNumber, systemImage: Constants.phoneImage)
                Label(contact.email, systemImage: Constants.trayImage)
            }
            .navigationTitle(contact.fullName)
        }
    }
}

// MARK: - Preview

#Preview {
    DetailsView(contact: Contact(
        name: Constants.mockName,
        surname: Constants.mockSurname,
        phoneNumber: Constants.mockPhone,
        email: Constants.mockEmail
    ))
}
