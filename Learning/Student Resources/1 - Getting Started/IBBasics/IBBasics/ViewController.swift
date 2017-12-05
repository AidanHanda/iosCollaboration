//
//  ViewController.swift
//  IBBasics
//
//  Created by Aidan Handa on 11/27/17.
//  Copyright © 2017 Aidan Handa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var text: UILabel!
    @IBAction func button(_ sender: Any) {
        text.text = String(counter)
        counter += 1
    }
    
}

