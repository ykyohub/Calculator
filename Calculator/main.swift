//
//  main.swift
//  Calculator
//
//  Created by 윤규호 on 11/30/23.
//

class Calculator{
    func operate(cal:String, firstNumber:Double, secondNumber:Double) -> Double{
        var result:Double = 0
        switch(cal){
        case "+" : let myCal = AddOperation(); result = myCal.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-" : let myCal = SubtractOperation(); result = myCal.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*" : let myCal = MultiplyOperation(); result = myCal.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/" : let myCal = DivideOperation(); result = myCal.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        default : return 0
        }
        return result
    }
}

//더하기 클래스
class AddOperation{
    func operate(firstNumber:Double, secondNumber:Double) -> Double {
        print("\(firstNumber) + \(secondNumber) 의 결과")
        return firstNumber + secondNumber
    }
}

//빼기 클래스
class SubtractOperation{
    func operate(firstNumber:Double, secondNumber:Double) -> Double {
        print("\(firstNumber) - \(secondNumber) 의 결과")
        return firstNumber - secondNumber
    }
}

//곱하기 클래스
class MultiplyOperation{
    func operate(firstNumber:Double, secondNumber:Double) -> Double {
        print("\(firstNumber) * \(secondNumber) 의 결과")
        return firstNumber * secondNumber
    }
}

//나누기 클래스
class DivideOperation{
    func operate(firstNumber:Double, secondNumber:Double) -> Double {
        print("\(firstNumber) / \(secondNumber) 의 결과")
        return firstNumber / secondNumber
    }
}

let calculator = Calculator()
let result:Double = calculator.operate(cal: "-", firstNumber: 5, secondNumber: 2)
print(result)
