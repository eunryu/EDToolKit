//
//  AutoLayoutKit.swift
//  Pods
//
//  Created by 김현지 on 2016. 11. 11..
//
//

import Foundation
import UIKit

public class AutoLayoutKit {
    //MARK: AutoLayout Tool
    func EqualWidth(TargetView : AnyObject, Width : CGFloat) {
        TargetView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: Width))
    }
    
    func EqualHeight(TargetView : AnyObject, Height : CGFloat) {
        TargetView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: Height))
    }
    
    func CenterX(TargetView : AnyObject, MainView : AnyObject) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: MainView, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0))
    }
    
    func CenterY(TargetView : AnyObject, MainView : AnyObject) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: MainView, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: 0))
    }
    
    func Leading(TargetView : AnyObject, MainView : AnyObject, LeadingSize : CGFloat) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: MainView, attribute: NSLayoutAttribute.Leading, multiplier: 1.0, constant: LeadingSize))
    }
    
    func Trailing(TargetView : AnyObject, MainView : AnyObject, TrailingSize : CGFloat) {
        MainView.addConstraint(NSLayoutConstraint(item: MainView, attribute: NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem: TargetView, attribute: NSLayoutAttribute.Trailing, multiplier: 1.0, constant: TrailingSize))
    }
    
    func Top(TargetView : AnyObject, MainView :AnyObject, TopSize : CGFloat) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: MainView, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: TopSize))
    }
    
    func Bottom(TargetView : AnyObject, MainView : AnyObject, BottomSize : CGFloat) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: MainView, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: BottomSize))
    }
    
    func setAspectRation(ratioWidth: CGFloat, ratioHeight: CGFloat, TargetView: AnyObject) {
        TargetView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: .Width, relatedBy: .Equal, toItem: TargetView, attribute: .Height, multiplier: ratioWidth/ratioHeight, constant: 0))
    }
    
    func setViewTerm(term: CGFloat, topView: AnyObject, bottomView: AnyObject, mainView: AnyObject) {
        mainView.addConstraint(NSLayoutConstraint(item: topView, attribute: .Bottom, relatedBy: .Equal, toItem: bottomView, attribute: .Top, multiplier: 1.0, constant: -term))
    }
    
    //MARK: set AutoLayout
    func setAutoLayout(Leading: CGFloat?, Trailing: CGFloat?, Top: CGFloat?, Bottom: CGFloat?, Width: CGFloat?, Height: CGFloat?, TargetView: AnyObject, MainView: AnyObject){
        // Leading
        if Leading != nil {
            self.Leading(TargetView, MainView: MainView, LeadingSize: Leading!)
        }
        
        //Trailing
        if Trailing != nil {
            self.Trailing(TargetView, MainView: MainView, TrailingSize: Trailing!)
        }
        
        //Top
        if Top != nil {
            self.Top(TargetView, MainView: MainView, TopSize: Top!)
        }
        
        //Bottom
        if Bottom != nil {
            self.Bottom(TargetView, MainView: MainView, BottomSize: -Bottom!)
        }
        
        //Width
        if Width != nil {
            self.EqualWidth(TargetView, Width: Width!)
        }
        
        //Height
        if Height != nil {
            self.EqualHeight(TargetView, Height: Height!)
        }
    }
    
    func setCenterLayout(X: Bool, Y: Bool, TargetView: AnyObject, MainView: AnyObject) {
        // X
        if X == true {
            self.CenterX(TargetView, MainView: MainView)
        }
        
        // Y
        if Y == true {
            self.CenterY(TargetView, MainView: MainView)
        }
    }
    
    func setEqualWidthAndHeight(width: CGFloat, height: CGFloat, targetView: AnyObject) {
        self.EqualWidth(targetView, Width: width)
        self.EqualHeight(targetView, Height: height)
    }
    
    //MARK: return Constraint
    func return_EqualWidth(TargetView : AnyObject, Width : CGFloat) -> NSLayoutConstraint {
        let EqualWidth : NSLayoutConstraint = NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: Width)
        return EqualWidth
    }
    
    func return_EqualHeight(TargetView : AnyObject, Height : CGFloat) -> NSLayoutConstraint {
        let EqualHeight                     = NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: Height)
        return EqualHeight
    }
    
    func return_CenterX(TargetView : AnyObject, MainView : AnyObject) -> NSLayoutConstraint {
        let centerX                         = NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: MainView, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0)
        return centerX
    }
    
    func return_CenterY(TargetView : AnyObject, MainView : AnyObject) -> NSLayoutConstraint {
        let centerY                         = NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: MainView, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: 0)
        return centerY
    }
    
    func return_Leading(TargetView : AnyObject, MainView : AnyObject, LeadingSize : CGFloat) -> NSLayoutConstraint {
        let Leading                         = NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: MainView, attribute: NSLayoutAttribute.Leading, multiplier: 1.0, constant: LeadingSize)
        return Leading
    }
    
    func return_Trailing(TargetView : AnyObject, MainView : AnyObject, TrailingSize : CGFloat) -> NSLayoutConstraint {
        let Trailing                        = NSLayoutConstraint(item: MainView, attribute: NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem: TargetView, attribute: NSLayoutAttribute.Trailing, multiplier: 1.0, constant: TrailingSize)
        return Trailing
    }
    
    func return_Top(TargetView : AnyObject, MainView :AnyObject, TopSize : CGFloat) -> NSLayoutConstraint {
        let top                             = NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: MainView, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: TopSize)
        return top
    }
    
    func return_Bottom(TargetView : AnyObject, MainView : AnyObject, BottomSize : CGFloat) -> NSLayoutConstraint {
        let bottom                          = NSLayoutConstraint(item: TargetView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: MainView, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: BottomSize)
        return bottom
    }
    
    // TODO: Ratio 추가.
    func setRatio(TargetView: AnyObject, ratioWidth: CGFloat, ratioHeigth: CGFloat) {
        TargetView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: .Width, relatedBy: .Equal, toItem: TargetView, attribute: .Height, multiplier: ratioWidth / ratioHeigth, constant: 1.0))
    }
    
    func return_Ratio(TargetView: AnyObject, ratioWidth: CGFloat, ratioHeight: CGFloat) -> NSLayoutConstraint {
        let ratio = NSLayoutConstraint(item: TargetView, attribute: .Width, relatedBy: .Equal, toItem: TargetView, attribute: .Height, multiplier: ratioWidth / ratioHeight, constant: 1.0)
        return ratio
    }
}
