//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by NN121local on 11/28/17.
//  Copyright © 2017 NN121local. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        BigBadLabel.textColor = .black
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var BigBadLabel: UILabel!
    
    @IBOutlet weak var BigBadButton: UIButton!
    
    
}


