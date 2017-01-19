//
//  ViewController.swift
//  ColorMix
//
//  Created by Sanjna Verma on 1/12/17.
//  Copyright © 2017 Sanjna Verma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //This is for the switches

    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var box: UIView!
    
    var r : CGFloat = 1
    var b : CGFloat =  1
    var g : CGFloat = 1
   
    //This is for the sliders
    
    @IBOutlet weak var sliderBox: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    var rS : CGFloat = 255
    var gS : CGFloat = 255
    var bS : CGFloat = 255
    
    @IBAction func slidersAndRiders(_ sender: Any) {
        rS = CGFloat(redSlider.value)
        gS = CGFloat(greenSlider.value)
        bS = CGFloat(blueSlider.value)
        
        
        
    }
    
    
    @IBAction func switchesAndBitches(_ sender: Any) {
        
        if redSwitch.isOn{
            r = 1
        } else {
            r = 0
        }
        
        if greenSwitch.isOn{
            g = 1
        } else{
            g = 0
        }
        
        if blueSwitch.isOn{
            b = 1
        } else{
            b = 0
        }
        
        //box.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1.0)
        box.backgroundColor = UIColor(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(1))
    }
    
    
    
    
    override func viewDidLoad() {
        redSwitch.addTarget(self, action: #selector(switchesAndBitches), for: .valueChanged)
        greenSwitch.addTarget(self, action: #selector(switchesAndBitches), for: .valueChanged)
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

