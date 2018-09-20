//
//  Operation.swift
//  CalcYouLater
//
//  Created by Avinash on 9/20/18.
//  Copyright © 2018 Ryan Menghani. All rights reserved.
//

import Foundation


enum Operation: String {
    case add = "+"
    case subtract = "-"
    case multiply = "x"
    case divide = "/"
    
    func perform(_ lhs: Int, _ rhs: Int) -> Int {
        switch self {
        case .add:
            return lhs + rhs
        case .subtract:
            return lhs - rhs
        case .multiply:
            return lhs * rhs
        case .divide:
            return lhs / rhs
        }
    }
}
