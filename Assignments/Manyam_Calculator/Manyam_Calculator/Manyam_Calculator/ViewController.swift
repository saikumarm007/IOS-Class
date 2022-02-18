//
//  ViewController.swift
//  Manyam_Calculator
//
//  Created by Siva Rama Krishna Manyam on 2/12/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var displayLabel: UILabel!
    
    var num1 = ""
    var num2 = ""
    var result = ""
    var operation = ""
    var currNum = ""
    var opChange = false
    var inChainmode = false

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func AC(_ sender: UIButton) {
        
        clearAll()
    }
    func clearAll(){
        num1 = ""
        num2 = ""
        opChange = false
        operation = ""
        currNum = ""
        displayLabel.text = ""
        inChainmode = false
    }
    func setData(_ number: String){
        if displayLabel.text == "0"{
            displayLabel.text = ""
        }
        else{
            if !opChange{
                displayLabel.text! += number
                num1 += number
            }
            else{
                if !inChainmode{
                    displayLabel.text! += number
                    num2 += number
                }
                else{
                    displayLabel.text = ""
                    displayLabel.text! += number
                    num2 += number
                }
            }
        }
    }
    
    func calTemp(_ operation:String)->String {
        if num1 != "" && num2 != ""{
            if operation == "+"{
                num1 = String(Double(num1)! + Double(num2)!)
                currNum = num2
                num2 = ""
                return String(num1)
            }
            if operation == "-"{
                num1 = String(Double(num1)! - Double(num2)!)
                currNum = num2
                num2 = ""
                
                return String(num1)
            }
            if operation == "*"{
                num1 = String(Double(num1)! * Double(num2)!)
                currNum = num2
                num2 = ""
                return String(num1)
            }
            if operation == "/"{
                num1 = String(Double(num1)! / Double(num2)!)
                currNum = num2
                num2 = ""
                return String(num1)
            }
            if operation == "%" {
                let s1 = Double(num1)!
                let s2 = Double(num2)!
                var r = s1.remainder(dividingBy: s2)
                num1 = String(r)
                currNum = num2
                num2 = ""
                return String(num1)
            }
        }
        return ""
    }
    func resultFormatter(_ result:String)->String {
        let value = Double(result)!
        var resultStr = String(round(value * 100000) / 100000.0)
        
        if resultStr.contains(".0"){
            resultStr.removeSubrange(resultStr.index(resultStr.endIndex, offsetBy: -2)..<resultStr.endIndex)
        }
        
        return resultStr
}
    
    @IBAction func C(_ sender: UIButton) {
        num2 = ""
        displayLabel.text = ""
    }
    @IBAction func plusOrMinus(_ sender: UIButton) {
        let pm = displayLabel.text!
        var RunningTotal = (pm as NSString).doubleValue
        if(RunningTotal > 0){
            RunningTotal = RunningTotal * -1;
            let std = String(format: "%.0f", RunningTotal)
            displayLabel.text = std;
//            workings = std;
        }
        else{
            RunningTotal = RunningTotal * -1;
            let std = String(format: "%.0f", RunningTotal)
            displayLabel.text = std;
//            workings = std;
        }
    }
    @IBAction func divide(_ sender: UIButton) {
        let temp = calTemp(operation)
        operation = "/"
        displayLabel.text = (temp != "") ? resultFormatter(temp) : ""
          if temp != "" {
              //            inChainmode = true
              if num2 != ""{
                  inChainmode = true
                  
                  if opChange {
                      result = String(Double(temp)! / Double(num2)!)
                      print(result)
                      if result == "inf"{
                        displayLabel.text! = "Error"
                      }else{
                        displayLabel.text! = resultFormatter(result)
                      }
                  }
              }
          }
          opChange = true
        
    }
    
    @IBAction func multiplication(_ sender: UIButton) {
        let temp = calTemp(operation)
        print("temp is \(temp)")
        operation = "*"
        currNum=""
        displayLabel.text = (temp != "") ? resultFormatter(temp) : ""
         
        opChange = true
    }
    @IBAction func minus(_ sender: UIButton) {
        if(num1 == ""){
            num1 = "0"
        }
        let temp = calTemp(operation)
        print("temp is \(temp)")
        operation = "-"
        currNum=""
        displayLabel.text = (temp != "") ? resultFormatter(temp) : ""
        opChange = true
        
    }
    @IBAction func plus(_ sender: UIButton) {
        let temp = calTemp(operation)
        print("temp is \(temp)")
        operation = "+"
        currNum=""
        displayLabel.text = (temp != "") ? resultFormatter(temp) : ""
        opChange = true
    }
    
    @IBAction func equals(_ sender: UIButton) {
        var res = ""
        switch operation {
        case "+":
            
        if currNum != "" {
                res = String(Double(num1)! + Double(currNum)!)
                displayLabel.text = resultFormatter(res)
                 num2 = currNum
            }else{
                res = String(Double(num1)! + Double(num2)!)
                displayLabel.text = resultFormatter(res)
            }
            num1 = res
            
            break
        case "*":
            if currNum != "" {
                res = String(Double(num1)! * Double(currNum)!)
                displayLabel.text = resultFormatter(res)
            }else{
                res = String(Double(num1)! * Double(num2)!)
                displayLabel.text = resultFormatter(res)
            }
            num1 = res
            
            break
        case "-":
            if currNum != "" {
                res = String(Double(num1)! - Double(currNum)!)
                displayLabel.text = resultFormatter(res)
                
            }else{
                res = String(Double(num1)! - Double(num2)!)
                displayLabel.text = resultFormatter(res)
               
            }
            num1 = res
            break
        case "/":
            if displayLabel.text == "Error"{
                clearAll()
            }else{
                if currNum != "" {
                    res = String(Double(num1)! / Double(currNum)!)
                    if res == "inf"{
                        displayLabel.text! = "Error"
                        return
                    }else{
                        displayLabel.text = resultFormatter(res)
                    }
                }else{
                    res = String(Double(num1)! / Double(num2)!)
                    if res == "inf"{
                        displayLabel.text! = "Error"
                        return
                    }else{
                        displayLabel.text = resultFormatter(res)
                    }
                }
                num1 = res
            }
            break
        case "%":
            if currNum != "" {
                displayLabel.text = resultFormatter(res)
                let s1 = Double(num1)!
                let s2 = Double(currNum)!
                var r = s1.remainder(dividingBy: s2)
                res = String(r)
                 num2 = currNum
            }else{
                let s1 = Double(num1)!
                let s2 = Double(num2)!
                var r = s1.remainder(dividingBy: s2)
                res = String(r)
                displayLabel.text = resultFormatter(res)
            }
            num1 = res
            
            break
            
        default:
            print("IOS")
        }
    
    }
    
    @IBAction func remainder(_ sender: UIButton) {
        let temp = calTemp(operation)
        print("temp is \(temp)")
        operation = "%"
        currNum=""
        displayLabel.text = (temp != "") ? resultFormatter(temp) : ""
         
        opChange = true
    }
    @IBAction func dot(_ sender: UIButton) {
        setData(".")
    }
    
    @IBAction func seven(_ sender: UIButton) {
        setData("7")
    }
    @IBAction func eight(_ sender: UIButton) {
        setData("8")
    }
    
    @IBAction func nine(_ sender: UIButton) {
        setData("9")
    }
    @IBAction func four(_ sender: UIButton) {
        setData("4")
    }
    
    @IBAction func five(_ sender: UIButton) {
        setData("5")
    }
    @IBAction func six(_ sender: UIButton) {
        setData("6")
    }
    
    @IBAction func one(_ sender: UIButton) {
        setData("1")
    }
    @IBAction func two(_ sender: UIButton) {
        setData("2")
    }
    @IBAction func three(_ sender: UIButton) {
        setData("3")
    }
    @IBAction func zero(_ sender: UIButton) {
        setData("0")
    }
    
    
}


