//
//  ViewController.swift
//  Manyam_DiceGame
//
//  Created by Manyam,Siva Rama Krishna on 2/24/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Player1Name: UITextField!
    @IBOutlet weak var Player2Name: UITextField!
    @IBOutlet weak var Player1Value: UILabel!
    @IBOutlet weak var Player2Value: UILabel!
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Rolladice(_ sender: Any) {
        
        let arr = [1,2,3,4,5,6]
        Player1Value.text! = Player1Name.text!
        Player2Value.text! = Player2Name.text!
        let p1:Int = arr.randomElement() ?? 0
        let p2:Int = arr.randomElement() ?? 0
        Player1Value.text! += ": \(p1) "
        Player2Value.text! += ": \(p2) "
//        let p3 = Int(p1)
//        let p4 = Int(p2)
        if(p1 == p2){
            DisplayLabel.text! = "The game is tie"
        }
        else if(p1 > p2){
            DisplayLabel.text! = Player1Name.text! + " is winner: \(p1)"
        }
        else if(p1 < p2){
            DisplayLabel.text! = Player2Name.text! + " is winner: \(p2)"
        }
        
        
    }
    
}

