//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Manyam,Siva Rama Krishna on 2/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ImageViewOutlet: UIImageView!
    @IBOutlet weak var crsNumber: UILabel!
    @IBOutlet weak var crsTitle: UILabel!
    @IBOutlet weak var crsSemester: UILabel!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    let courses = [["img01","44555","Network Security","Fall 2022"],
    ["img02","44643","ios","Spring 2022"],["img03","44656","Streming Data","Summer 2022"]]
    
    var imgNumber = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Load the details
        updateUI(imgNumber);
        //Previous button is disabled
        previousButton.isEnabled = false;
    }
    
    @IBAction func previousButtonClicked(_ sender: Any) {
        nextButton.isEnabled = true;
        imgNumber -= 1
        updateUI(imgNumber)
        if(imgNumber == 0){
            previousButton.isEnabled = false
            
        }
        
    }
    @IBAction func nextButtonClicked(_ sender: Any) {
        imgNumber += 1
        updateUI(imgNumber)
        previousButton.isEnabled = true
        if(imgNumber == courses.count-1){
            nextButton.isEnabled = false
        }
        
        
    }
    
    func updateUI(_ imgNumber: Int){
        ImageViewOutlet.image = UIImage(named: courses[imgNumber][0])
        crsNumber.text = courses[imgNumber][1]
        crsTitle.text = courses[imgNumber][2]
        crsSemester.text = courses[imgNumber][3]
        
    }
    


}

