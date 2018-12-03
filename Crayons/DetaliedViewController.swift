//
//  DetaliedViewController.swift
//  Crayons
//
//  Created by Ashli Rankin on 12/3/18.
//  Copyright © 2018 Ashli Rankin. All rights reserved.
//

import UIKit

class DetaliedViewController: UIViewController {
    @IBOutlet weak var crayonName: UILabel!
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var stepperAlpha: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
  
    public var crayon: Crayon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUserInfo()
       
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
   updateUserInfo()
    }
    
    
    @IBAction func colorSliders(_ sender: UISlider) {
       updateColor()
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        updateColor()
    }
    
    
    
    func updateUserInfo(){
        view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red/255), green: CGFloat(crayon.green/255), blue: CGFloat(crayon.blue/255), alpha: 1)
        crayonName.text = crayon.name
        sliderRed.value = Float(CGFloat(crayon.red/255))
        redLabel.text = "\(Float(CGFloat(crayon.red/255)))"
        sliderGreen.value = Float(CGFloat(crayon.green/255))
        greenLabel.text = "\(Float(CGFloat(crayon.green/255)))"
        sliderBlue.value = Float(CGFloat(crayon.blue/255))
        stepperLabel.text = "\(stepperAlpha.value)"
    }
    func updateColor(){
        let red = CGFloat(sliderRed.value)
        redLabel.text = "\(red)"
        let green = CGFloat(sliderGreen.value)
        greenLabel.text = "\(green)"
        let blue = CGFloat(sliderBlue.value)
        greenLabel.text = "\(blue)"
        let alpha = CGFloat(stepperAlpha.value)
        stepperLabel.text = "\(alpha)"
        let color = UIColor(displayP3Red: red, green: green, blue: blue, alpha: alpha)
        view.backgroundColor = color
    }
}
