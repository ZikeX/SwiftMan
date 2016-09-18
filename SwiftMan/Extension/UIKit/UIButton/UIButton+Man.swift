//
//  UIButton+Man.swift
//  SwiftMan
//
//  Created by neu on 16/5/4.
//  Copyright © 2016年 cactus. All rights reserved.
//

import UIKit

extension UIButton{
    
    public convenience init(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, target: AnyObject, action: Selector) {
        self.init(frame:CGRect(x: x, y: y, width: width, height: height), target:target,action:action,controlEvents:UIControlEvents.touchUpInside)
    }
    
    
    public convenience init(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, target: AnyObject, action: Selector, controlEvents: UIControlEvents) {
        self.init(frame:CGRect(x: x, y: y, width: width, height: height), target:target,action:action,controlEvents:controlEvents)
    }
    
    public convenience init(frame: CGRect, target: AnyObject, action: Selector) {
        self.init(frame:frame, target:target,action:action,controlEvents:UIControlEvents.touchUpInside)
    }
    
    public convenience init(frame: CGRect, target: AnyObject, action: Selector, controlEvents: UIControlEvents) {
        self.init(frame: frame)
        addTarget(target, action: action, for: controlEvents)
    }
    
    
    public func m_setBackgroundColor(_ color: UIColor, forState: UIControlState) {
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        UIGraphicsGetCurrentContext()?.setFillColor(color.cgColor)
        UIGraphicsGetCurrentContext()?.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        let colorImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.setBackgroundImage(colorImage, for: forState)
        
    }
}
