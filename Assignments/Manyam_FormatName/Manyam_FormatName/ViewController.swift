//
//  ViewController.swift
//  Manyam_FormatName
//
//  Created by Manyam,Siva Rama Krishna on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var FullNameLabel: UILabel!
    @IBOutlet weak var initialsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onClickOfSubmit(_ sender: Any) {
        var fName = firstNameTextField.text!
        var lName = lastNameTextField.text!
        FullNameLabel.text = "\(fName),\(lName)"
        var finitial = fName.prefix(1)
        var linitial = lName.prefix(1)
        var initials = finitial + linitial
        initialsLabel.text = "\(initials)"
        
    }

    @IBAction func onClickOfReset(_ sender: Any) {
        self.firstNameTextField.text = nil
        self.lastNameTextField.text = nil
        self.FullNameLabel.text = nil
        self.initialsLabel.text = nil
        firstNameTextField.becomeFirstResponder() 
        
        
        
    }
    
}

