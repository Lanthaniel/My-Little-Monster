//
//  DragImg.swift
//  mylittlemonster
//
//  Created by Nate on 5/3/16.
//  Copyright © 2016 Karabensh. All rights reserved.
//

import Foundation
import UIKit

class DragImg: UIImageView{
    
    //Properties
    var originalPosition: CGPoint!
    var dropTarget: UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    //when it is pressed
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        originalPosition = self.center
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //grab the first object of the touches set
        if let touch = touches.first {
            let position = touch.locationInView(self.superview)
            //self.center = position;
            self.center = CGPointMake(position.x, position.y)
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        //if there is a touch and if there is a target
        if let touch = touches.first, let target = dropTarget {
            
            //get the position
            let position = touch.locationInView(self.superview)
            
            if CGRectContainsPoint(target.frame, position) {
                NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "onTargetDropped", object: nil))
            }
        }
        
        self.center = originalPosition
    }
}