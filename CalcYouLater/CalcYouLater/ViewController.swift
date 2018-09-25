//
//  ViewController.swift
//  CalcYouLater
//
//  Created by Ryan Menghani on 9/13/18.
//  Copyright © 2018 Ryan Menghani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    var lhs: Int?
    var operation: Operation?
    
    
    @IBAction func clear(_ sender: UIButton) {
        label.text = "0"
        lhs = nil
        operation = nil
    }
    
    
    @IBAction func operationPressed(_ sender: UIButton) {
        guard let lhsString = label.text, let operationString = sender.titleLabel?.text else {
            return
        }
        
        lhs = Int(lhsString)
        operation = Operation(rawValue: operationString)
        label.text = operationString
        
        
    }
    
    
    @IBAction func equals(_ sender: UIButton) {
        guard let lhs = lhs, let operation = operation, let rhsString = label.text, let rhs = Int(rhsString) else {
            return
        }
        
        let result = operation.perform(lhs, rhs)
        label.text = "\(result)"
        
        
        
    }
    
    
    
    
    
    
    
    @IBAction func numberPressed(_ sender: UIButton) {
        guard let string = label.text, let numberString = sender.titleLabel?.text, let number = Int(numberString) else {
            return
        }
        
        if let int = Int(string) {
            label.text = "\((int * 10) + number)"
        } else {
            label.text = "\(number)"
        }
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

