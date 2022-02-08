//
//  ViewController.swift
//  EvenorOdd
//
//  Created by Manyam,Siva Rama Krishna on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InputField: UITextField!
    
    @IBOutlet weak var OutputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SubmitButton(_ sender: Any) {
        let num = Int(InputField.text!)!
//        var inum = (num as NSString).intValue
//        var intnum = Int(num);
        if(num%2 == 0){
            OutputLabel.text = "\(num) is a even number"
        }
        else{
            OutputLabel.text = "\(num) is a odd number"
            
        }
    }
    

}

