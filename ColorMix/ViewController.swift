//
//  ViewController.swift
//  ColorMix
//
//  Created by Sanjna Verma on 1/12/17.
//  Copyright © 2017 Sanjna Verma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var box: UIView!
    
    var r = 0
    var b = 0
    var g = 0
    
    
    @IBAction func switchUp(_ sender: Any) {
        if redSwitch.isOn{
            r = 1
        }
        
        if greenSwitch.isOn{
            g = 1
        }
        
        if blueSwitch.isOn{
            b = 1
        }
        
        box.backgroundColor = UIColor(colorLiteralRed: Float(r), green: Float(g), blue: Float(b), alpha: Float(1))
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

