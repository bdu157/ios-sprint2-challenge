//
//  ShoppingItem.swift
//  Shopping List
//
//  Created by Dongwoo Pae on 5/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class ShoppingItem: Codable {
    var name: String
    var imageData: Data
    var isAdded : Bool
    
    init(name: String, imageData: Data, isAdded: Bool = false) {
        self.name = name
        self.isAdded = isAdded
        self.imageData = imageData
    }
    
    func toggle(for shoppingItem: ShoppingItem, updateIsAddedTo isAdded: Bool) {
        shoppingItem.isAdded = !shoppingItem.isAdded
    }
}
