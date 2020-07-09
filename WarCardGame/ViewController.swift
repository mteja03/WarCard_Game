//
//  ViewController.swift
//  WarCardGame
//
//  Created by Teja Mattapalli on 26/04/2020.
//  Copyright © 2020 Teja Mattapalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftimageview: UIImageView!
    
    @IBOutlet weak var rightimageview: UIImageView!
    
    @IBOutlet weak var leftscore: UILabel!
    
    @IBOutlet weak var rightscore: UILabel!
    
    var leftScore = 0
    var rightScore = 0
         
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealbutton(_ sender: Any) {
        //randomize some numbers
        let leftnumber = Int.random(in: 2...14)
        let rightnumber = Int.random(in: 2...14)
        
        //update image views
        leftimageview.image = UIImage(named: "card\(leftnumber)")
        rightimageview.image = UIImage(named: "card\(rightnumber)")
        
        //compare random numbers
        if leftnumber > rightnumber {
            //left win
            leftScore += 1
            leftscore.text = String(leftScore)
        }
        
        else if  leftnumber < rightnumber {
            //right win
            rightScore += 1
            rightscore.text = String(rightScore)
        }
        
        else{
            // tie
        }

    }
    
}

