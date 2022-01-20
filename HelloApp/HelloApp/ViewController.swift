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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Submit(_ sender: UIButton) {
        //read the text from the text field
        var name = TextOutlet.text!
        // Cahnge the display lable to Hello
        LableConnect.text = "Hello, \(name)"
    }
    
}

