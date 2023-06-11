//
//  ViewController.swift
//  JSRippleEffect
//
//  Created by Jasty Saran on 06/11/2023.
//  Copyright (c) 2023 Jasty Saran. All rights reserved.
//

import UIKit
import JSRippleEffect
class ViewController: UIViewController {
   
    @IBOutlet weak var rippleView:UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        JSRippleEffect.addRippleEffect(to: self.rippleView, numberOfCircles: 5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

