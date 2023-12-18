//
//  Buttons.swift
//  Calculator
//
//  Created by 김민성 on 2023/12/18.
//


import Foundation
import SwiftUI

enum Buttons: String {
    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case plus = "+"
    case substract = "-"
    case divide = "\u{00F7}"
    case multiply = "\u{00D7}"
    case equal = "="
    case percent = "%"
    case negative = "\u{00B1}"
    case allClear = "AC"
    case clear = "C"
    case decimal = "."
    
    var buttonColor: Color {
        switch self {
        case .divide .multiply .substract .plus .equal:
            return Color(.orange)
            
        case .clear .allClear .negative .percent:
            return Color(.lightGray)
            
        default:
            return Color(.darkGray)
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .divide .multiply .substract .plus .equal:
            return Color(.white)
        }
    }
        
    
}

enum Operator: String {
    case divide, multiply, substract, plus, equal
}





