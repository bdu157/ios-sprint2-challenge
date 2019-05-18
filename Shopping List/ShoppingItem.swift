//
//  ShoppingItem.swift
//  Shopping List
//
//  Created by Dongwoo Pae on 5/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

struct ShoppingItem: Equatable {
    var name: String
    var image: UIImage
    var isAdded : Bool
    
    init(name: String, imageName: String, isAdded: Bool = false) {
        self.name = name
        self.isAdded = isAdded
        self.image = UIImage(named: imageName)!
    }
}
