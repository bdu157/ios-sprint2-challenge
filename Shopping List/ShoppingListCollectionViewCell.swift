//
//  ShoppingListCollectionViewCell.swift
//  Shopping List
//
//  Created by Dongwoo Pae on 5/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ShoppingListCollectionViewCell: UICollectionViewCell {
    
    var shoppingItem : ShoppingItem? {
        didSet {
            updateViews()
        }
    }
    
    
    @IBOutlet weak var notLabel: UILabel!
    @IBOutlet weak var addedLabel: UILabel!
    
    @IBOutlet weak var shoppingItemImage: UIImageView!
    
    @IBOutlet weak var itemName: UILabel!
    
    
    func updateViews() {
        guard let input = shoppingItem else {return}
            shoppingItemImage.image = UIImage(data: input.imageData)
            itemName.text = input.name
            setStatusOfItem()
    }
    
    // ture false from usredefults if true then show none if
    func setStatusOfItem() {
        let isAdded = UserDefaults.standard.bool(forKey: .isAddedKey)
        if isAdded {
            notLabel.text = ""
        } else {
            notLabel.text = "Not"
        }
    }
}
