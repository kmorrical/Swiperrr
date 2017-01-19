//
//  ViewController.swift
//  swiperr
//
//  Created by Kathryn Morrical on 1/18/17.
//  Copyright © 2017 Kathryn Morrical Coding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        picLbl.image = nil
        nameLbl.text = ""
        kateLbl.text = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var picLbl: UIImageView!
    @IBOutlet weak var tinderLbl: UIImageView!
    
    @IBOutlet weak var bottomMatchPic: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var viewTop: UIView!
    @IBOutlet weak var katePic: UIImageView!
    
    @IBOutlet weak var kateLbl: UILabel!
    
    
    @IBAction func leftSwipe(_ sender: UISwipeGestureRecognizer) {
        self.view.backgroundColor = UIColor.white
       let result = arc4random_uniform(6) + 1
//        picLbl.text = ""
        picLbl.image = UIImage(named:
            "\(result)")
        tinderLbl.image = UIImage(named: "tinder1")
        viewTop.backgroundColor = UIColor.red
        if result == 1 {
            nameLbl.text = "Aries, 42"
        }
        else if result == 2{
            nameLbl.text = "Aristotle, 25"
        }
        else if result == 3{
            nameLbl.text = "Benecio, 45"
        }
        else if result == 4{
            nameLbl.text = "Dizon, 40"
        }
        else if result == 5{
            nameLbl.text = "Francis, 35"
            
        }
        else {
            nameLbl.text = "Guy, 28"
        }
        katePic.image = nil
        kateLbl.text = ""
        bottomMatchPic.image = nil
        
        
    }

    @IBAction func rightSwipe(_ sender: UISwipeGestureRecognizer) {
        self.view.backgroundColor = UIColor.white
        picLbl.image = UIImage(named: "matchImg")
        tinderLbl.image = nil
        viewTop.backgroundColor = UIColor.red
        katePic.image = UIImage(named: "sunglass1.jpg")
        kateLbl.text = "Kate, 29"
        
        if nameLbl.text == "Aries, 42" {
            bottomMatchPic.image = UIImage(named: "1")
            
        }
        else if nameLbl.text == "Aristotle, 25"{
            bottomMatchPic.image = UIImage(named: "2")
            
        }
        else if nameLbl.text == "Benecio, 45"{
            bottomMatchPic.image = UIImage(named: "3")
            
        }
        else if nameLbl.text == "Dizon, 40"{
            bottomMatchPic.image = UIImage(named: "4.")
            
        }
        else if nameLbl.text == "Francis, 35"{
            
            bottomMatchPic.image = UIImage(named: "5")
            
        }
        else {
            bottomMatchPic.image = UIImage(named: "6")
            
        }
        
        
    }
}

