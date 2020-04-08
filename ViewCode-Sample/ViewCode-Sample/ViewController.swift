//
//  ViewController.swift
//  ViewCode-Sample
//
//  Created by Victor Oka on 07/04/20.
//  Copyright © 2020 Victor Oka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .red
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
