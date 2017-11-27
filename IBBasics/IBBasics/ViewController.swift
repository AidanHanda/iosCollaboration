//
//  ViewController.swift
//  IBBasics
//
//  Created by NN121local on 11/27/17.
//  Copyright © 2017 NN121local. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        BigBadButton.setTitleColor(.red, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var BigBadLabel: UILabel!
    
    @IBOutlet weak var BigBadButton: UIButton!

    @IBAction func BigBadButtonPress(_ sender: Any) {
        
        print("The button was pressed")
        BigBadLabel.text = String(counter)
        counter += 1
    }
}

