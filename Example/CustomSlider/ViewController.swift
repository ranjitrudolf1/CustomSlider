//
//  ViewController.swift
//  CustomSlider
//
//  Created by Ranjit Kumar on 12/14/2023.
//  Copyright (c) 2023 Ranjit Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customSlider: SliderView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.customSlider.configureSlider(trackHeight: 10, thumbRadius: 30, borderWidth: 5, thumbColor: .green, thumbBorderColor: .black, trackColor: .red)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}

