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
        updateScore()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateScore()
    }
    override func loadView() {
        super.loadView()
        updateScore()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func plus10(_ sender: Any) {
        if(appDelegate.getCounter()! >= 10)
        {
            appDelegate.setIncr(amount: 10 + appDelegate.getIncr()!)
            appDelegate.subtractCounter(amount: 10 )
            appDelegate.saveData()
            
            updateScore()
            genVibe(success: true)
        } else {
            genVibe(success: false)
        }
    }
    
    @IBAction func plus100(_ sender: Any) {
        if(appDelegate.getCounter()! >= 100)
        {
            appDelegate.setIncr(amount: 100 + appDelegate.getIncr()!)
            appDelegate.setCounter(value: appDelegate.getCounter()! - 100)
            updateScore()
            genVibe(success: true)
        } else {
            genVibe(success: false)
        }
    }
    
    @IBAction func plus1000(_ sender: Any) {
        if(appDelegate.getCounter()! >= 1000)
        {
            appDelegate.setIncr(amount: 1000 + appDelegate.getIncr()!)
            appDelegate.setCounter(value: appDelegate.getCounter()! - 1000)
            updateScore()
            genVibe(success: true)
        } else {
            genVibe(success: false)
        }
    }
    @IBAction func plushunthou(_ sender: Any) {
        if(appDelegate.getCounter()! >= 100000)
        {
            appDelegate.setIncr(amount: 100000 + appDelegate.getIncr()!)
            appDelegate.setCounter(value: appDelegate.getCounter()! - 100000)
            updateScore()
            genVibe(success: true)
        } else {
            genVibe(success: false)
        }
    }
    
    @IBOutlet weak var Score: UILabel!
    func updateScore()
    {
        Score.text = String(appDelegate.getCounter()!)
    }

    func genVibe(success: Bool){
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        if success {
            generator.impactOccurred()
        } else {
            generator.impactOccurred()
        }
    }
    
    @IBAction func plusmil(_ sender: Any) {
        if(appDelegate.getCounter()! >= 1000000)
        {
            appDelegate.setIncr(amount: 1000000 + appDelegate.getIncr()!)
            appDelegate.setCounter(value: appDelegate.getCounter()! - 1000000)
            updateScore()
            genVibe(success: true)
        } else {
            genVibe(success: false)
        }
    }
    
    @IBAction func plushunmil(_ sender: Any) {
        if(appDelegate.getCounter()! >= 100000000)
        {
            appDelegate.setIncr(amount: 100000000 + appDelegate.getIncr()!)
            appDelegate.setCounter(value: appDelegate.getCounter()! - 100000000)
            updateScore()
            genVibe(success: true)
        } else {
            genVibe(success: false)
        }
    }
    
    @IBAction func plusbil(_ sender: Any) {
        if(appDelegate.getCounter()! >= 1000000000)
        {
            appDelegate.setIncr(amount: 1000000000 + appDelegate.getIncr()!)
            appDelegate.setCounter(value: appDelegate.getCounter()! - 1000000000)
            updateScore()
            genVibe(success: true)
        } else {
            genVibe(success: false)
        }
    }
    
    @IBAction func plusOneTril(_ sender: Any) {
        if(appDelegate.getCounter()! >= 1000000000000)
        {
            appDelegate.setIncr(amount: 1000000000000 + appDelegate.getIncr()!)
            appDelegate.setCounter(value: appDelegate.getCounter()! - 1000000000000)
            updateScore()
            genVibe(success: true)
        } else {
            genVibe(success: false)
        }
    }
    
    @IBAction func plusHundTril(_ sender: Any) {
        if(appDelegate.getCounter()! >= 100000000000000)
        {
            appDelegate.setIncr(amount: 100000000000000 + appDelegate.getIncr()!)
            appDelegate.setCounter(value: appDelegate.getCounter()! - 100000000000000)
            updateScore()
            genVibe(success: true)
        } else {
            genVibe(success: false)
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        appDelegate.setIncr(amount: 1)
        appDelegate.setCounter(value: 0)
        updateScore()
    }
}





