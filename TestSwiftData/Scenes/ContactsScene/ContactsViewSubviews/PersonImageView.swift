//
//  PersonImageView.swift
//  Lesson-4.05_ContactList
//
//  Created by Юрий Куринной on 28.12.2023.
//

import SwiftUI

// MARK: - PersonImageView

struct PersonImageView: View {
    
    // MARK: - Body
    
    var body: some View {
        Image(systemName: Constants.personImage)
            .resizable()
            .frame(width: 100, height: 100, alignment: .center)
    }
}

// MARK: - Preview

#Preview {
    PersonImageView()
}
