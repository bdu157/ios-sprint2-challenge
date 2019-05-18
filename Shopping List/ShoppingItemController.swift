//
//  ShoppingItemController.swift
//  Shopping List
//
//  Created by Dongwoo Pae on 5/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class ShoppingItemController {
    
    init() {
        loadImageData()
        reloadFromPersistentStore()
    }
    
    var shoppingItems : [ShoppingItem] = []
    
    let itemNames = ["Apple", "Grapes", "Milk", "Muffin", "Popcorn", "Soda", "Strawberries"]
    
    private func loadImageData() {
        for item in itemNames {
            let photoImage = UIImage(named: item)
            guard let imageData = photoImage?.jpegData(compressionQuality: 1.0) else { return }
            let input = ShoppingItem.init(name: item, imageData: imageData)
            shoppingItems.append(input)
        }
    }
    //update object Bool when cell is clicked so add savePersistentStore so when it reloads it will have same record
    //saveToPersistentStore()


    //create a file
    private var readingListURL: URL? {
        let fileManager = FileManager.default
        guard let documentDirectory = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else {return nil}
        return documentDirectory.appendingPathComponent("Itemlist.plist")
    }
    
    //save it to location(file)
    func saveToPersistentStore() {
        guard let url = readingListURL else {return}
        do {
            let encoder = PropertyListEncoder()
            let shoppingItemData = try encoder.encode(shoppingItems)
            try shoppingItemData.write(to: url)
        } catch {
            NSLog("error saving books data: \(error)")
        }
    }
    
    
    //reload it from location (file)
    func reloadFromPersistentStore() {
        let fileManager = FileManager.default
        guard let url = readingListURL,
            fileManager.fileExists(atPath: url.path) else {return}
        do {
            let data = try Data(contentsOf: url)
            let decoder = PropertyListDecoder()
            let decodeShoppingItem = try decoder.decode([ShoppingItem].self, from: data)
            self.shoppingItems = decodeShoppingItem
        } catch {
            NSLog("error loading books data:\(error)")
        }
    }


    var isAddedTures : [ShoppingItem] {
        let isAddedOnes = shoppingItems.filter{$0.isAdded == true}
        return isAddedOnes
    }

}
