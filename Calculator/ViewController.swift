//
//  ViewController.swift
//  Calculator
//
//  Created by NguyenDucBien on 11/30/16.
//  Copyright © 2016 NguyenDucBien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var distanceBettweenInputTextFileAndResultLabel: NSLayoutConstraint!
    
    
    @IBOutlet weak var distanceBettweenResultLabelAndMiddleView: NSLayoutConstraint!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var isTappingNumber : Bool = false // xem da hoan thanh viec chon so hay chua
    var isEndOperation : Bool = true // phep tinh da hoan thanh hay chua
    var firstNumber : Double = 0
    var secondNumber : Double = 0
    var operation : String = ""
    var check = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputTextField.userInteractionEnabled = false
        
    }
    override func updateViewConstraints() {
        super.updateViewConstraints()
        updateContraints()
    }
    
    
    
    func updateContraints() -> Void {
        let scale = UIScreen.mainScreen().bounds.size.height / 667
        distanceBettweenResultLabelAndMiddleView.constant = UIScreen.mainScreen().bounds.size.height > 480 ? distanceBettweenResultLabelAndMiddleView.constant * scale : distanceBettweenResultLabelAndMiddleView.constant * 0.1
        distanceBettweenInputTextFileAndResultLabel.constant = UIScreen.mainScreen().bounds.size.height > 480 ? distanceBettweenInputTextFileAndResultLabel.constant * scale : distanceBettweenInputTextFileAndResultLabel.constant * 0.1
        
    }
    
    @IBAction func numberAction(sender: UIButton) {
        let number = sender.currentTitle
        if isTappingNumber == true{
            inputTextField.text = inputTextField.text! + number!
            
        }else{
            inputTextField.text = number
            isTappingNumber = true
        }
    }
    
    @IBAction func operatorAction(sender: UIButton) { //Ham xu ly cac phep tinh!
        
        operation = sender.currentTitle! //Truyen gia tri title cua cac nut khi bam vao
        if let inputOperation = Double(inputTextField.text!){ // dam bao ung dung khong bi loi khi chay run time
            if isEndOperation{
                firstNumber = inputOperation
                isEndOperation = false
                inputTextField.text! = ""
            }else{
                secondNumber = Double(inputTextField.text!)!
                tinhToan()
                
            }
            
        }else{
            print("Bạn cần nhập số trước khi thực hiện tính toán")
        }
        isTappingNumber = false
        
        if operation == "%" {
            equalAction(sender)
        }else if operation == "+/-"{
            equalAction(sender)
        }

    }
    
    @IBAction func equalAction(sender: UIButton) {
        
        if isTappingNumber == true
        {
            if let realSecondNumber = Double(inputTextField.text!){
                secondNumber = realSecondNumber
            }
        }
        else
        {
            secondNumber = 0
        }
        tinhToan()
        
        
    }
    
    func tinhToan(){
        var result: Double = 0
        switch operation {
        case "+":
            result = firstNumber + secondNumber
            
        case "-":
            result = firstNumber - secondNumber
            
        case "x":
            result = firstNumber * secondNumber
            
        case "/":
            result = firstNumber / secondNumber
            
        case "%":
            result = firstNumber / 100
            
        case "+/-":
            if firstNumber < 0{
                firstNumber = fabs(firstNumber)
                result = firstNumber
            }else{
                firstNumber = -1 * firstNumber
                result = firstNumber
            }
        default:
            print("ErrorOperation")
            
        }
        resultLabel.text = "\(result)"
        inputTextField.text = ""
        firstNumber = result
        secondNumber = 0
    }
    
    
    
    @IBAction func acAction(sender: AnyObject) {
        firstNumber = 0
        secondNumber = 0
        inputTextField.text = ""
        resultLabel.text = "0"
        isEndOperation = true
    }
    
}

