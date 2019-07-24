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
    
    
    @IBOutlet weak var addedLabel: UILabel!
    
    @IBOutlet weak var shoppingItemImage: UIImageView!
    
    @IBOutlet weak var itemName: UILabel!
    
    
    func updateViews() {
        guard let input = shoppingItem else {return}
            shoppingItemImage.image = UIImage(data: input.imageData)
            itemName.text = input.name
        if input.isAdded {
            addedLabel.text = "Added"
        } else {
            addedLabel.text = "Not Added"
        }
    }

}
