//
//  MonsterImg.swift
//  mylittlemonster
//
//  Created by Nate on 5/3/16.
//  Copyright © 2016 Karabensh. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        //start the animation
        playIdleAnimation()
    }
    
 
    
    func playIdleAnimation() {
        
        //set base image
        self.image = UIImage(named: "idle1.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        
        //load in monster images
        for x in 1..<5 {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
        }
        
        //set the animation for the monster ImageView
        self.animationImages = imgArray
        
        //set the animation duration for the monster
        self.animationDuration = 0.8
        
        //when repeat count is 0 it will always repeat
        self.animationRepeatCount = 0
        
        //start the monster animation
        self.startAnimating()
    }
    
    func playDeathAnimation() {
        
        //set default frame so it stays as the last animated image.
        self.image = UIImage(named: "dead5.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        
        //load in monster images
        for x in 1..<6 {
            let img = UIImage(named: "dead\(x).png")
            imgArray.append(img!)
        }
        
        //set the animation for the monster ImageView
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
    }
    
}