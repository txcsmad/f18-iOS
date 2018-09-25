//
//  ViewController.swift
//  Flashlight
//
//  Created by Rishabh Thakkar on 9/6/18.
//  Copyright © 2018 ribsthak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isLightOn:Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setNeedsStatusBarAppearanceUpdate()
        Toggle.setTitle("Off", for: .normal)
        Toggle.setTitleColor(.black, for: .normal)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        if isLightOn {
            return .default
        } else {
            return .lightContent
        }
    }
    
    @IBOutlet weak var Toggle: UIButton!
    
    @IBAction func toggleLight(_ sender: Any) {
        if isLightOn {
            view.backgroundColor = .black
            Toggle.setTitleColor(.white, for: .normal)
            Toggle.setTitle("On", for: .normal)
            print(preferredStatusBarStyle)
        } else {
            view.backgroundColor = .white
            Toggle.setTitleColor(.black, for: .normal)
            Toggle.setTitle("Off", for: .normal)
            print(preferredStatusBarStyle)
        }
        isLightOn = !isLightOn
        setNeedsStatusBarAppearanceUpdate()
    }
    
}

