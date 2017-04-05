//
//  main.swift
//  SimpleCalc
//
//  Created by Muhaamed Drammeh on 4/4/17.
//  Copyright © 2017 Muhaamed Drammeh. All rights reserved.
//

import Foundation

print("Welcome to MO's Calculator.\nEnter an expression separated by returns to calculate, use operators like (+,-,/,%).\nYou can also use operators like (fact - for factorial, avg - for average, count - to count the numbers input)\nWhen using these operators you separate each input with space\n\n")

while true{
    
    print("Enter an expression separated by returns:\n")
    
    let response1 = readLine(strippingNewline: true)!
    var intnumber1:Double? = Double(response1)
    var answer = 0.0
    
    if intnumber1 != nil {
        
        let operatorSign = readLine(strippingNewline: true)!
        let response2 = readLine(strippingNewline: true)!
        let intnumber2:Double? = Double(response2)
        
        switch operatorSign{
        case "+":
            answer = intnumber1!+intnumber2!
            print ("The answer is \(answer)\n")
        case "-":
            answer = intnumber1!-intnumber2!
            print ("The answer is \(answer)\n")
        case "*":
            answer = intnumber1!*intnumber2!
            print ("The answer is \(answer)\n")
        case "/":
            answer = intnumber1!/intnumber2!
            print ("The answer is \(answer)\n")
        case "%":
            answer = (intnumber1?.truncatingRemainder(dividingBy: intnumber2!))!
            print ("The answer is \(answer)\n")
        default:
            print("Invalid math operator\n")
        }
        
        
        
    }
    else{
        var responseArray = response1.components(separatedBy: " ")
        var multiOperand: String = " "
        
        multiOperand = responseArray.last!
        print(multiOperand)
        
        switch multiOperand{
        case "count":
            print ("\(responseArray.count-1) Numbers\n")
        case "avg":
            var avg = 0.0
            var sum = 0.0
            responseArray.removeLast()
            
            for num in responseArray{
                var value = Double(num)
                sum += value!
            }
            
            print ("The answer avg is \(sum/Double(responseArray.count))\n")
        case "fact":
            responseArray.removeLast()
            if responseArray.count == 1{
                var total = 1
                var factNumber = 0
                factNumber = Int(responseArray[0])!
                if factNumber == 0 {
                    print("The Factorial of \(responseArray[0]) is 1")
                }else{
                    while factNumber > 0{
                        total *= factNumber
                        factNumber -= 1
                    }
                    print("The Factorial of \(responseArray[0]) is \(total)")
                }
                
            }
            else{
                print ("A factorial can only calculate one number\n")
            }
            
        default:
            print("Invalid math operator\n")
        }
        
        
        
    }
    
    
    
    
}


