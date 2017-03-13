//
//  MakeLabelKit.swift
//  Pods
//
//  Created by 김현지 on 2016. 11. 23..
//
//

import Foundation
import UIKit

open class MakeUILabelKit {

    public typealias CompletionHandler = () -> Void
    open static let COLOR_BASIC = UIColor.black
    fileprivate var isAction: Void = Void()
    
//    let handler: han
    
    fileprivate var isActionTest: CompletionHandler!
    
    public init() {
    
    }
    
    // MARK: make UILabel
    open func makeLabel(_ text: String, size: CGRect, addView: AnyObject) -> UILabel {
        let mainLabel = UILabel(frame: size)
        
        labelBasicWork(mainLabel)
        mainLabel.text = text
        mainLabel.textColor = UIColor.black
        mainLabel.font = UIFont(name: "Helvetica", size: 14.0)
        
        addView.addSubview(mainLabel)
        return mainLabel
    }
    
    open func textDecoration(_ label: UILabel, size: CGFloat?, fontName: String?, color: UIColor?, alignment: NSTextAlignment?) {
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
    
    open func addTouchAction(_ label: UILabel, isVoid: @escaping CompletionHandler, isAction: Selector) {
        self.isActionTest = isVoid
        let isGesture = UITapGestureRecognizer(target: label, action: isAction)
        label.addGestureRecognizer(isGesture)
    }
    
    open func returnSelector() -> Selector{
        return #selector(isActionTest(_:))
    }
    
    @objc open func isActionTest(_ sender: UITapGestureRecognizer) {
        print("ISAction")
    }
    
    open func isFunction() {
//        self.isActionTest
        
    }
    
    open func isATest(_ isNeedVoid: CompletionHandler) {
    
    }
    // MARK: Make tool
    func labelBasicWork(_ label: UILabel) {
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
    }

}
