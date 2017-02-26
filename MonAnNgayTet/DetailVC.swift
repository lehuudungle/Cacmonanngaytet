//
//  DetailVC.swift
//  MonAnNgayTet
//
//  Created by Admin on 2/26/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var imgFood: UIImageView!
    @IBOutlet weak var ingredientText: UITextView!
    
    var detailItem: String!
    var img: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blackColor()

    }
    override func viewWillAppear(animated: Bool) {
        imgFood.image = img
        ingredientText.text = detailItem
    }
    

}
