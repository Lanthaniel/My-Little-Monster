//
//  ViewController.swift
//  mylittlemonster
//
//  Created by Nate on 5/3/16.
//  Copyright © 2016 Karabensh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlets
    @IBOutlet weak var monsterImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imgArray = [UIImage]()
        
        //load in monster images
        for x in 1..<5 {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
        }
        
        //set the animation to the monster ImageView
        monsterImg.animationImages = imgArray
        
        //set the animation duration for the monster
        monsterImg.animationDuration = 0.8
        
        //when repeat count is 0 it will always repeat
        monsterImg.animationRepeatCount = 0
        
        monsterImg.startAnimating()
    }



}

