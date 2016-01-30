//
//  StoryViewController.swift
//  yurisnsd
//
//  Created by Hitori Achmad on 12/24/15.
//  Copyright © 2015 Hitori Achmad. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {

    @IBOutlet weak var ninaScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(ninaScrollView)
        
        // Do any additional setup after loading the view.
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        ninaScrollView.contentSize = CGSizeMake(320,700)
        
    }

    
}
