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
    
    
    @IBOutlet weak var listCountTextView: UITextView!
    
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
        presentAlert()
    }
    
    
    //UIAlert Action
    func presentAlert() {
        
        guard let inputName = nameTextField.text,
            let inputAddress = addressTextField.text else {return}
        
        let alert = UIAlertController(title: inputName, message: "\(inputName)'s order will be delivered in 15 minutes to your \(inputAddress)", preferredStyle: .actionSheet)
        let message = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(message)
        
        present(alert, animated: true, completion: nil)
    }
    
    

    func updateView() {
        if let input = shoppingItemController {
            let arrayOfTures = input.isAddedTrues
            let numberOfTrues = arrayOfTures.count
            listCountTextView.text = "You currently have \(numberOfTrues)(s) in your shopping list"
    } else {
            listCountTextView.text = "You currently have 0 in your shopping list"
    }
    }
    
}
