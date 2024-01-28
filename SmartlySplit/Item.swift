//
//  Item.swift
//  SmartlySplit
//
//  Created by Vigneishwar Sathyanarayanan on 28/1/2024.
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
