//
//  ShoppingItem.swift
//  Shopping List
//
//  Created by Dongwoo Pae on 5/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct ShoppingItem: Codable {
    let name: String
    let isAdded : Bool
    
    init(name: String, isAdded: Bool = false) {
        self.name = name
        self.isAdded = isAdded
    }
}
