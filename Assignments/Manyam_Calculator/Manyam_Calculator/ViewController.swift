//
//  ViewController.swift
//  Manyam_Calculator
//
//  Created by Manyam,Siva Rama Krishna on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var WDisplaylabel: UILabel!
    var workings:String = ""
    @IBOutlet weak var DisplayLabel: UILabel!
    @IBOutlet weak var AC: UIButton!
    @IBOutlet weak var C: UIButton!
    @IBOutlet weak var PM: UIButton!
    @IBOutlet weak var Division: UIButton!
    @IBOutlet weak var S7: UIButton!
    @IBOutlet weak var E8: UIButton!
    @IBOutlet weak var N9: UIButton!
    @IBOutlet weak var F4: UIButton!
    @IBOutlet weak var F5: UIButton!
    @IBOutlet weak var S6: UIButton!
    @IBOutlet weak var O1: UIButton!
    @IBOutlet weak var T2: UIButton!
    @IBOutlet weak var T3: UIButton!
    @IBOutlet weak var Z0: UIButton!
    @IBOutlet weak var DOT: UIButton!
    @IBOutlet weak var Equal: UIButton!
    @IBOutlet weak var Plus: UIButton!
    @IBOutlet weak var Minus: UIButton!
    @IBOutlet weak var Multiple: UIButton!
    @IBOutlet weak var Remain: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        // Do any additional setup after loading the view.
    }
    func clearAll(){
        workings = ""
        DisplayLabel.text = ""
        WDisplaylabel.text = ""
    }
    func addToWorkings(value: String){
        workings = workings + value
        WDisplaylabel.text = workings
    }
    
    @IBAction func AC(_ sender: Any) {
        addToWorkings(value: "%")
    }
    @IBAction func Clear(_ sender: Any) {
        addToWorkings(value: "C")
        clearAll()
        
    }
    @IBAction func PM(_ sender: Any) {
        addToWorkings(value: "+/-")
    }
    @IBAction func Division(_ sender: Any) {
        addToWorkings(value: "÷")
    }
    @IBAction func Multiply(_ sender: Any) {
        addToWorkings(value: "*")
    }
    @IBAction func Minus(_ sender: Any) {
        addToWorkings(value: "-")
    }
    @IBAction func Dot(_ sender: Any) {
        addToWorkings(value: ".")
    }
    @IBAction func Plus(_ sender: Any) {
        addToWorkings(value: "+")
    }
    @IBAction func Equal(_ sender: Any) {
        addToWorkings(value: "=")
    }
    @IBAction func Remainder(_ sender: Any) {
        addToWorkings(value: "%")
    }
    @IBAction func Z0(_ sender: Any) {
        addToWorkings(value: "0")
    }
    @IBAction func O1(_ sender: Any) {
        addToWorkings(value: "1")
    }
    @IBAction func T2(_ sender: Any) {
        addToWorkings(value: "2")
    }
    @IBAction func T3(_ sender: Any) {
        addToWorkings(value: "3")
    }
    @IBAction func F4(_ sender: Any) {
        addToWorkings(value: "4")
    }
    @IBAction func F5(_ sender: Any) {
        addToWorkings(value: "5")
    }
    @IBAction func S6(_ sender: Any) {
        addToWorkings(value: "6")
    }
    @IBAction func S7(_ sender: Any) {
        addToWorkings(value: "7")
    }
    @IBAction func E8(_ sender: Any) {
        addToWorkings(value: "8")
    }
    @IBAction func N9(_ sender: Any) {
        addToWorkings(value: "9")
    }
    
}

