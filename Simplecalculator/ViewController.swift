//
//  ViewController.swift
//  Simplecalculator
//
//  Created by user233780 on 6/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    
    var  calculator = Calculator()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    func setupUI() {
        resultLabel.textAlignment = .right
        resultLabel.text = "0"
        
    }
    
    @IBAction func digitButton(_ sender: UIButton) {
        guard let digit = sender.titleLabel?.text else {return}
        appendToResultLabel(digit)
        calculator.push(digit)
      /*  if let number = Int(digit), number >=07number <=9{
            appendToResultLabel(digit)
        }else {
            resultLabel.text="invalid input"
        }*/
    }
    
    @IBAction func operatorButton(_ sender:UIButton){
        guard let operatorValue = sender.titleLabel?.text else {return}
       appendToResultLabel(operatorValue)
        calculator.push(operatorValue)
        

    }
    
    @IBAction func equalButton(_ sender: UIButton) {
        let result = calculator.calculate()
        resultLabel.text = String(result)
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        resultLabel.text = "0"
        calculator.clear()
        

    }
    func appendToResultLabel(_ text: String){
        guard let currentText = resultLabel.text else {return}
        resultLabel.text=currentText + text
    }
}

