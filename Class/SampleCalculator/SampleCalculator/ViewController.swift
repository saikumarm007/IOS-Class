//
//  ViewController.swift
//  SampleCalculator
//
//  Created by Manyam,Siva Rama Krishna on 1/27/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Outlet: UILabel!
    var operand1:Double = -1.1
    var operand2:Double = -1.1
    var calcOperator: Character = " ";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func Button1(_ sender: Any) {
        Outlet.text = Outlet.text! + "1"
        if operand1 == -1.1 {
            operand1 = 1;
        }
        else{
            operand2 = 1;
        }
    }
    
    @IBAction func Button2(_ sender: Any) {
        Outlet.text = Outlet.text! + "2"
        if operand1 == -1.1 {
            operand1 = 2;
        }
        else{
            operand2 = 2;
        }
        
    }
    
    @IBAction func ButtonMinus(_ sender: Any) {
        Outlet.text = Outlet.text! + "-"
        if calcOperator == " " {
            calcOperator = "-"
        }
    }
    @IBAction func ButtonPlus(_ sender: Any) {
        Outlet.text = Outlet.text! + "+"
        if calcOperator == " " {
            calcOperator = "+"
        }
    }
    
    @IBAction func ButtonMul(_ sender: Any) {
        Outlet.text = Outlet.text! + "*"
        if calcOperator == " " {
            calcOperator = "*"
        }
    }
    @IBAction func ButtonEqual(_ sender: Any) {
        Outlet.text = Outlet.text! + "="
        if calcOperator == "+" {
            Outlet.text = Outlet.text! + "\(operand1+operand2)"
        }
        else if calcOperator == "-"{
            Outlet.text = Outlet.text! + "\(operand1-operand2)"
        }
        else if calcOperator == "*"{
            Outlet.text = Outlet.text! + "\(operand1*operand2)"
        }
    }
    
}

