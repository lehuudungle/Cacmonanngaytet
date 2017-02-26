//
//  MonAn.swift
//  MonAnNgayTet
//
//  Created by Admin on 2/21/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation
import UIKit
class MonAn {
    var name : String?
    var photo :  UIImage?
    var thanhphan: String?
    init (name: String, photo: String, thanhphan: String)
    {
        self.name = name
        self.photo = UIImage(named: "\(photo).jpg")
        self.thanhphan = thanhphan
    }
}