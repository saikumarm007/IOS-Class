//
//  ViewController.swift
//  DiscountApp
//
//  Created by Manyam,Siva Rama Krishna on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Amount: UITextField!
    @IBOutlet weak var Discount: UITextField!
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SubmitB(_ sender: Any) {
        
        var am = Amount.text!
        var am1 = Double(am)!
        var dis = Discount.text!
        var dis1 = Double(dis)!
        var a = dis1 * am1
        var b = a / 100
        var c = am1 - b
        DisplayLabel.text = String(c)
        
        
        
    }
    

}

