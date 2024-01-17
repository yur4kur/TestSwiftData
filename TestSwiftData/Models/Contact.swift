//
//  Contact.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 26.12.2023.
//

import Foundation
import SwiftData

// MARK: - Contact

@Model
final class Contact {
    
    // MARK: Public properties
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String

    var fullName: String {
        "\(name) \(surname)"
    }

    // MARK: Initializers
    
    init(name: String, surname: String, phoneNumber: String, email: String) {
        self.name = name
        self.surname = surname
        self.phoneNumber = phoneNumber
        self.email = email
    }
}



