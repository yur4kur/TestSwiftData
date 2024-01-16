//
//  Item.swift
//  TestSwiftData
//
//  Created by Юрий Куринной on 16.01.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
