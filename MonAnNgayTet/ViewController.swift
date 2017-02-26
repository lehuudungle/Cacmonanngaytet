//
//  ViewController.swift
//  MonAnNgayTet
//
//  Created by Admin on 2/21/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var dataManager = DataManager.sharedInstance
    var detailVC: DetailVC!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        print("chay manh")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.data.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! Cell
        let monAn = dataManager.data[indexPath.item] as! MonAn
        cell.kCellWidth = self.view.frame.size.width  // bang do rong cua tableview
        cell.addSubviews()
        cell.imageViewCell.image = monAn.photo
        cell.nameLabel.text = monAn.name
        
        return cell
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200
    }
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {

        if editingStyle == UITableViewCellEditingStyle.Delete{
            dataManager.data.removeObjectAtIndex(indexPath.item)
            self.myTableView.reloadData()  // reload nay cung duoc
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if detailVC == nil{
            detailVC = self.storyboard?.instantiateViewControllerWithIdentifier("DetailVC") as! DetailVC
        }
        var monAn = dataManager.data[indexPath.row] as! MonAn
        detailVC.detailItem = monAn.thanhphan
        detailVC.img = monAn.photo
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }

}

