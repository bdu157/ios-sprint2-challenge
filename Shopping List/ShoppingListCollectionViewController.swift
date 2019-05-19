//
//  ShoppingListCollectionViewController.swift
//  Shopping List
//
//  Created by Dongwoo Pae on 5/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ShoppingListCollectionViewController: UICollectionViewController {

    var shoppingItemController = ShoppingItemController()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
            collectionView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return shoppingItemController.shoppingItems.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ShoppingListCollectionViewCell
        let shoppingItem = self.shoppingItemController.shoppingItems[indexPath.item]
        cell.shoppingItem = shoppingItem
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedItem = shoppingItemController.shoppingItems[indexPath.item]
        shoppingItemController.toggle(for: selectedItem)
        collectionView.reloadData()
    }
    
// MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToDetailShoppingListVC" {
            guard let destVC = segue.destination as? DetailShoppingListViewController else {return}
                destVC.shoppingItemController = shoppingItemController
        }
    }
    
 
    
    @IBAction func nexButton(_ sender: Any) {
    }
    
/*
    private func setIsAdded(for bool: Bool) {
        
        let userDefaults = UserDefaults.standard
        userDefaults.set(bool, forKey: .isAddedKey)
    }
*/
}

extension String {
    static var isAddedKey = "isAddedKey"
}
