//
//  FirstViewController.swift
//  TheTimeWaster
//
//  Created by Aidan Handa on 12/6/17.
//  Copyright © 2017 Aidan Handa. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    override func viewDidLoad() {
        super.viewDidLoad()
        LabelAF.text = String(appDelegate.getCounter()!);
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func loadView() {
        super.loadView()
        LabelAF.text = String(appDelegate.getCounter()!);
    }
    override func viewDidAppear(_ animated: Bool) {
        LabelAF.text = String(appDelegate.getCounter()!);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func BigBadButton(_ sender: Any) {
        appDelegate.incrCounter()
        LabelAF.text = String(appDelegate.getCounter()!)
        appDelegate.saveData()
    }
    
    @IBOutlet weak var LabelAF: UILabel!
    


}

