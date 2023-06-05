//
//  Calculator.swift
//  Simplecalculator
//
//  Created by user233780 on 6/4/23.
//

import Foundation
class Calculator {
    private var values: [String] = []
    private var result: Int = 0

    // Pushes a value (operand or operator) to the values array
    func push(_ value: String) {
        values.append(value)
    }

    // Calculates the result based on the values entered
    func calculate() -> Int {
        result = 0
        var currentOperator: String?

        for value in values {
            if let number = Int(value) {
                // If it's a number, perform the operation with the current operator
                if let operatorValue = currentOperator {
                    if operatorValue == "+" {
                        result += number
                    } else if operatorValue == "-" {
                        result -= number
                    } else if operatorValue == "*" {
                        result *= number
                    } else if operatorValue == "/" {
                        result /= number
                    }
                    currentOperator = nil
                } else {
                    // If no current operator, set the result as the number
                    result = number
                }
            } else {
                // If it's an operator, set it as the current operator
                currentOperator = value
            }
        }

        return result
    }
    func clear()
    {
        values.removeAll()
    }
}
