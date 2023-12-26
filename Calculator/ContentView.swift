//
//  ContentView.swift
//  Calculator
//
//  Created by 김민성 on 2023/12/18.
//

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
}

enum Operator: String {
    case divide, multiply, substract, plus, equal
}


struct ContentView: View {
    
    var value: String = "0"
    var buttons: [[String]] = [
        ["clear", "negative", "percent", "divide"], // line1
        ["seven", "eight", "nine", "multiply"],     // line2
        ["four", "five", "six", "substract"],       // line3
        ["one", "two", "three", "plus"],            // line4
        ["zero", "zero","decimal", "equal"]         // line5
    ]
    
    var body: some View {
        ZStack {
            // Background color
            Color.black.ignoresSafeArea()
            VStack {
                Spacer()
                
                // text display
                HStack {
                    Spacer()
                    Text(value)
                        .foregroundColor(.white)
                        .font(.system(size: 90))
                        .padding()
                }
                
                // Calculator buttons
                ForEach(buttons, id: \.self) { row in //line(n)을 정하는 단계
                    HStack(spacing: 12) {
                        ForEach(row, id: \.self) { item in //line(n)의 원소들에 접근하는 단계
                            Button(action: {
                                print("button is tapped")
                            }, label: {
                                Text(item.rawValue) // element로 Buttons enum에 접근해야함.
                                    .frame(width: 80,
                                           height: 80)
                                    .background(item.buttonColor) // 이런 식으로 색에 접근
                                    .cornerRadius(40)
                                    .foregroundColor(.white)
                                    .font(.system(size: 33))
                            }) // 함수를 따로 만들어서 버튼을 누르면 디스플레이 될 수 있게 해야할 듯.
                        }
                        
                    }
                    
                }
                
                
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
