//
//  RoundButton.swift
//  CalcYouLater
//
//  Created by Ryan Menghani on 9/13/18.
//  Copyright © 2018 Ryan Menghani. All rights reserved.
//

import UIKit

@IBDesignable class RoundButton: UIButton {
    
    @IBInspectable var circular: Bool = true
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
    
    func setup() {
        layer.cornerRadius = frame.height / 2
    }
    
    
}
