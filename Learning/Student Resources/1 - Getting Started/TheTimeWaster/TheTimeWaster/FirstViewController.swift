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
        LabelAF.text = getNumFromCounter();
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func loadView() {
        super.loadView()
        LabelAF.text = getNumFromCounter();
    }
    override func viewDidAppear(_ animated: Bool) {
        LabelAF.text = getNumFromCounter();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func BigBadButton(_ sender: Any) {
        appDelegate.incrCounter()
        animation(viewAnimation: Image)
        LabelAF.text = getNumFromCounter()
        appDelegate.saveData()
    }
    
    @IBOutlet weak var LabelAF: UILabel!
    @IBOutlet weak var Image: UIImageView!
    
    private func animation(viewAnimation: UIView) {
        
        UIView.animate(withDuration: 2, animations: {
            viewAnimation.frame.origin.x = +viewAnimation.frame.width
        }) { (_) in
            UIView.animate(withDuration: 2, delay: 1, options: [.curveEaseIn], animations: {
                viewAnimation.frame.origin.x -= viewAnimation.frame.width
            })
        }
    }
    
    func getNumFromCounter() -> String  {
        
        let n = NumberFormatter()
        n.numberStyle = .currency
        n.locale = Locale.current
        
        return n.string(from: NSNumber(value: appDelegate.getCounter()!))!
    }
}

