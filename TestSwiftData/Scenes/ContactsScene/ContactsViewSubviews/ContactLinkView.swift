//
//  ContactLinkView.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 27.12.2023.
//

import SwiftUI

// MARK: - ContactLabelView

struct ContactLinkView: View {
    
    // MARK: - Public properties
    
    let contact: Contact
    
    // MARK: - Body
    
    var body: some View {
        NavigationLink {
            DetailsView(contact: contact)
        } label: {
            Text(contact.fullName)
        }
    }
}

// MARK: - Preview

#Preview {
    ContactLinkView(contact: Contact(
        name: Constants.mockName,
        surname: Constants.mockSurname,
        phoneNumber: Constants.mockPhone,
        email: Constants.mockEmail
    ))
}
