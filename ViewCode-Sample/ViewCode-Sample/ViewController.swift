//
//  ViewController.swift
//  ViewCode-Sample
//
//  Created by Victor Oka on 07/04/20.
//  Copyright © 2020 Victor Oka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let screen = ViewControllerScreen()
    
    override func loadView() {
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
