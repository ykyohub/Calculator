//
//  main.swift
//  Calculator
//
//  Created by 윤규호 on 11/30/23.
//

class AbsctracOperation {
    func operate(firstNumber: Int, secondNumber: Int) -> Double? {
        return nil
    }
}

class AddOperation: AbsctracOperation {
    override func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber + secondNumber)
    }
}

class SubtractOperation: AbsctracOperation {
    override func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber - secondNumber)
    }
}

class MultiplyOperation: AbsctracOperation {
    override func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber * secondNumber)
    }
}

class DivideOperation: AbsctracOperation {
    override func operate(firstNumber: Int, secondNumber: Int) -> Double {
        return Double(firstNumber / secondNumber)
    }
}

class Calculator {
    private var abstractOperation: AbsctracOperation
    
    init(operation: AbsctracOperation){
        self.abstractOperation = operation
    }
    
    func setOperation(operation: AbsctracOperation){
        self.abstractOperation = operation
    }
    
    func calculate(firstNumber: Int, secondNumber: Int) -> Double {
        //옵셔널 바인딩 - 기본값 설정
        abstractOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber) ?? 0
    }
}

let calculator = Calculator(operation: AddOperation())

let addResult = calculator.calculate(firstNumber: 10, secondNumber: 20)

calculator.setOperation(operation: SubtractOperation())
let subtractResult = calculator.calculate(firstNumber: 30, secondNumber: 20)

calculator.setOperation(operation: MultiplyOperation())
let multiplyResult = calculator.calculate(firstNumber: 10, secondNumber: 5)

calculator.setOperation(operation: DivideOperation())
let divideResult = calculator.calculate(firstNumber: 40, secondNumber: 10)

print("addResult: \(addResult)")
print("subtractResult: \(subtractResult)")
print("multiplyResult: \(multiplyResult)")
print("divideResult: \(divideResult)")

//완료
