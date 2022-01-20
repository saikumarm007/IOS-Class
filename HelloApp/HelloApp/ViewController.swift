//
//  ViewController.swift
//  HelloApp
//
//  Created by Manyam,Siva Rama Krishna on 1/20/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TextOutlet: UITextField!
    @IBOutlet weak var LableConnect: UILabel!
    @IBOutlet weak var Percentage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Submit(_ sender: UIButton) {
        //read the text from the text field
        var name = TextOutlet.text!
        // Change the display lable to Hello
        var grade = "Please Enter Valid Percentage"
        var per = Percentage.text!
        var dper = (per as NSString).doubleValue
        var ddper:Double = dper
        
        switch ddper {
        case 90...100 :
            grade = "A"
        case 80...90:
            grade = "B"
        case 70...80:
            grade = "C"
        default:
            grade = "Enter valid percentage"
        }
        LableConnect.text = "Hello, \(name), Percentage is, \(grade)"
    }
    
}

