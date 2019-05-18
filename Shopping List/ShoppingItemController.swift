//
//  ShoppingItemController.swift
//  Shopping List
//
//  Created by Dongwoo Pae on 5/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class ShoppingItemController {
    
    init() {
        loadImage()
    }
    
    var shoppingItems : [ShoppingItem] = []
    
    let itemNames = ["Apple", "Grapes", "Milk", "Muffin", "Popcorn", "Soda", "Strawberries"]
    
    func loadImage() {
        for item in itemNames {
            let input = ShoppingItem.init(name: item, imageName: item)
            shoppingItems.append(input)
        }
    }
    

    
}
