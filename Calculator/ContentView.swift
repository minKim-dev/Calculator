//
//  ContentView.swift
//  Calculator
//
//  Created by 김민성 on 2023/12/18.
//

import SwiftUI

struct ContentView: View {
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
                
                // Display number
                HStack {
                    Spacer()
                    Text("100,000")
                        .foregroundColor(.white)
                        .font(.system(size: 90))
                        .padding()
                }
                
                // Buttons(ForEach로 바꾸기)
                ForEach(buttons, id: \.self) { row in //line(n)을 정하는 단계
                    HStack(spacing: 12) {
                        ForEach(row, id: \.self) { element in //line(n)의 원소들에 접근하는 단계
                            Button() // 함수를 따로 만들어서 버튼을 누르면 디스플레이 될 수 있게 해야할 듯.
                        }
                        .frame(width: 80,
                               height: 80)
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.black)
                        .font(.system(size: 33))
                        
                    }
                    
                }
                
                /*
                    HStack {
                        Text("C")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                        
                        Text("+/-")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                        Text("%")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.black)
                            .font(.system(size: 33))
                        Text("/")
                            .frame(width: 80,
                                   height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    
               
                    HStack {
                        Text("7")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        Text("8")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        Text("9")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        Text("*")
                            .frame(width: 80,
                                   height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    
                    
           
                    HStack {
                        Text("4")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        Text("5")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        Text("6")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        Text("-")
                            .frame(width: 80,
                                   height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                
                    HStack {
                        Text("1")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        Text("2")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        Text("3")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        Text("+")
                            .frame(width: 80,
                                   height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    
                    
                
                    HStack {
                        Text("0")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        Text("0")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        Text(".")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                        Text("=")
                            .frame(width: 80,
                                   height: 80)
                            .background(.orange)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                 */
                
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
