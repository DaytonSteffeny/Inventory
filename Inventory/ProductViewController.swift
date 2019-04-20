//
//  ProductViewController.swift
//  Inventory
//
//  Created by Dayton on 4/19/19.
//  Copyright © 2019 Dayton Steffeny. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    
    var product: Product?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let price = String(product!.price)
        let quantity = String(product!.stockedQuantity)
        let id = String(product!.id)
        
        titleLabel.text = product?.title
        priceLabel.text = price
        quantityLabel.text = quantity
        idLabel.text = id
        
        switch product?.category {
        case .computers?:
            categoryLabel.text = "Computers"
        case .electronics?:
            categoryLabel.text = "Electronics"
        case .kitchen?:
            categoryLabel.text = "Kitchen"
        case .pets?:
            categoryLabel.text = "Pets"
        default:
            print("Error!")
        }
        
    }
    



}
