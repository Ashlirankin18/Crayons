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
  
    public var crayon = Crayon?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    

}
