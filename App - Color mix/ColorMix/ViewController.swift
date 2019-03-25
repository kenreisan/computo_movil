//
//  ViewController.swift
//  ColorMix
//
//  Created by macbook on 3/11/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateColor(){
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
            redSlider.isEnabled = true
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
            greenSlider.isEnabled = true
        }
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
            blueSlider.isEnabled = true
        }

        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    @IBAction func switchAction(_ sender: Any) {
        updateColor()
        updateControls()
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        updateColor()
    }
    
    func updateControls(){
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
    
    @IBAction func reset(_ sender: Any) {
        redSwitch.isOn = true
        greenSwitch.isOn = true
        blueSwitch.isOn = true
        
        updateControls()
        
        redSlider.value = 0.5
        blueSlider.value = 0.5
        greenSlider.value = 0.5
        
        colorView.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
    }
}

