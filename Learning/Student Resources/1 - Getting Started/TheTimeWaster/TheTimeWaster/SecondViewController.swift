//
//  SecondViewController.swift
//  TheTimeWaster
//
//  Created by Aidan Handa on 12/6/17.
//  Copyright © 2017 Aidan Handa. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func loadView() {
        super.loadView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func plus10(_ sender: Any) {
        if(appDelegate.getCounter()! >= 10)
        {
            appDelegate.setIncr(amount: 10)
            appDelegate.subtractCounter(amount: 10)
            appDelegate.saveData()
            
            
        }
    }
    
    @IBAction func plus100(_ sender: Any) {
        if(appDelegate.getCounter()! >= 1000)
        {
            appDelegate.setIncr(amount: 100)
            appDelegate.setCounter(value: appDelegate.getCounter()! - 100)
        }
    }
    
    @IBAction func plus1000(_ sender: Any) {
        if(appDelegate.getCounter()! >= 100000)
        {
            appDelegate.setIncr(amount: 1000)
            appDelegate.setCounter(value: appDelegate.getCounter()! - 1000)
        }
    }

}

