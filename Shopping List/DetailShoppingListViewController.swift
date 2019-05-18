//
//  DetailShoppingListViewController.swift
//  Shopping List
//
//  Created by Dongwoo Pae on 5/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DetailShoppingListViewController: UIViewController {

    var shoppingItemController : ShoppingItemController?
    
    
    @IBOutlet weak var listCountLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         updateView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }


    
    
    
    @IBAction func sendOrderButtonTapped(_ sender: Any) {
    }
    
    
    func updateView() {
        if let input = shoppingItemController {
            let arrayOfTures = input.isAddedTures
            let numberOfTrues = arrayOfTures.count
            listCountLabel.text = "You currently have \(numberOfTrues)(s) in your shopping list"
    } else {
            listCountLabel.text = "You currently have 0 in your shopping list"
    }
    }
}
