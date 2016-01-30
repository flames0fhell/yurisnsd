//
//  CewekTableViewController.swift
//  yurisnsd
//
//  Created by Hitori Achmad on 12/24/15.
//  Copyright © 2015 Hitori Achmad. All rights reserved.
//

import UIKit
import Alamofire
class CewekTableViewController: UITableViewController {
    
    var cewek = [Cewek]()
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowYuri"{
            let yuriVC = segue.destinationViewController as? CantikViewController
            guard   let cell = sender as? UITableViewCell,
                    let indexPath = tableView.indexPathForCell(cell)
                else{
                     return
                }
            yuriVC?.ceweks = cewek[indexPath.row]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Alamofire.request(.GET, "http://webservice.foodr.id/tes").responseJSON { response in
            switch response.result {
                case .Success(let data):
                    let json = JSON(data)
                    let datas = json["data"].arrayValue
                    for data in datas{
                        let cewek = Cewek()
                        cewek.title = data["title"].stringValue
                        cewek.image = "Girls-Generation-Party-Yuri_9"
                        cewek.cellImage = "Nina"
                        self.cewek.append(cewek)
                    }
                    self.tableView.reloadData()
                case .Failure(let error):
                    print("Request failed with error: \(error)")
            }
        }
        
        
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cewek.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CewekCell",forIndexPath: indexPath)
        
        cell.textLabel?.text = cewek[indexPath.row].title
        cell.imageView?.image = UIImage(named:cewek[indexPath.row].cellImage!)//cell image
        
        
        
        return cell
        
    }
    
}
