//
//  ViewController.swift
//  CustomSlider
//
//  Created by Ranjit Kumar on 12/14/2023.
//  Copyright (c) 2023 Ranjit Kumar. All rights reserved.
//

import UIKit
import CustomSlider

class ViewController: UIViewController, SliderDelegate {

    
    @IBOutlet weak var customSlider: CustomSlider!

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.customSlider = CustomSlider(frame: customSlider.frame)
        self.customSlider.configureSlider(trackHeight: 10, thumbRadius: 30, borderWidth: 5, thumbColor: .green, thumbBorderColor: .black, trackColor: .red)
//        self.customSlider.delegate = self
//        self.customSlider.backgroundColor = .red
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func sliderValueChanged(value: Float) {
        print("Slider value: \(value)")
    }
    

}

