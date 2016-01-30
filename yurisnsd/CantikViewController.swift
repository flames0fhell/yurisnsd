//
//  CantikViewController.swift
//  yurisnsd
//
//  Created by Hitori Achmad on 12/23/15.
//  Copyright © 2015 Hitori Achmad. All rights reserved.
//

import UIKit

class CantikViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yuriImage: UIImageView!
    
    var ceweks: Cewek?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ceweks?.title
        if let i = ceweks?.image{
            yuriImage.image = UIImage(named: i)
        }
        
        // Do any additional setup after loading the view.
    }
    @IBAction func addButton(sender: AnyObject) {
        titleLabel.text = "Simanis Yuri"
        print("yes")
    }

}
