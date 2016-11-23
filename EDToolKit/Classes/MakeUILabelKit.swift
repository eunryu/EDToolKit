//
//  MakeLabelKit.swift
//  Pods
//
//  Created by 김현지 on 2016. 11. 23..
//
//

import Foundation
import UIKit

public class MakeUILabelKit {

    public typealias CompletionHandler = () -> Void
    public static let COLOR_BASIC = UIColor.blackColor()
    private var isAction: Void = Void()
    
//    let handler: han
    
    private var isActionTest: CompletionHandler!
    
    public init() {
    
    }
    
    // MARK: make UILabel
    public func makeLabel(text: String, size: CGRect, addView: AnyObject) -> UILabel {
        let mainLabel = UILabel(frame: size)
        
        labelBasicWork(mainLabel)
        mainLabel.text = text
        mainLabel.textColor = UIColor.blackColor()
        mainLabel.font = UIFont(name: "Helvetica", size: 14.0)
        
        addView.addSubview(mainLabel)
        return mainLabel
    }
    
    public func textDecoration(label: UILabel, size: CGFloat?, fontName: String?, color: UIColor?, alignment: NSTextAlignment?) {
        if size != nil && fontName != nil {
            label.font = UIFont(name: fontName!, size: size!)
        } else {
            if size != nil {
                label.font = UIFont(name: "Helvetica", size: size!)
            } else if fontName != nil {
                label.font = UIFont(name: fontName!, size: 14.0)
            }
        }
        
        if color != nil {
            label.textColor = color!
        }
        
        if alignment != nil {
            label.textAlignment = alignment!
        }
    }
    
    public func addTouchAction(label: UILabel, isVoid: CompletionHandler, isAction: Selector) {
        self.isActionTest = isVoid
        let isGesture = UITapGestureRecognizer(target: label, action: isAction)
        label.addGestureRecognizer(isGesture)
    }
    
    public func returnSelector() -> Selector{
        return #selector(isActionTest(_:))
    }
    
    @objc public func isActionTest(sender: UITapGestureRecognizer) {
        print("ISAction")
    }
    
    public func isFunction() {
//        self.isActionTest
        
    }
    
    public func isATest(isNeedVoid: CompletionHandler) {
    
    }
    // MARK: Make tool
    func labelBasicWork(label: UILabel) {
        label.numberOfLines = 0
        label.textAlignment = .Left
        label.translatesAutoresizingMaskIntoConstraints = false
    }

}
