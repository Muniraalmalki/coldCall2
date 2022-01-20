//
//  ViewController.swift
//  coldCall
//
//  Created by munira almallki on 24/02/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    let name = ["Ready!","Jimmy" , "Cody","Jay","Counrtney","Byrant","Uanage"]
    
    var number = [1,2,3,4,5]
     var num = Int.random(in: 1...5)
    @IBAction func coldCallButtunPress(_ sender: UIButton) {
        if num < number.count {
            num += 1
        }
        else {
            num = 1
        }
        
        if num == 1 || num == 2 {
            numberLabel.textColor = UIColor.red
        }else if num == 3 || num == 4 {
            numberLabel.textColor = UIColor.orange
        }else if num == 5 {
            numberLabel.textColor = UIColor.green
            
        }
        
        viewDidLoad()
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameLabel.text = name[Int.random(in: 0...6)]
        numberLabel.text = String(num)
   
        
        }
}


