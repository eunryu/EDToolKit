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
    
    public static let COLOR_BASIC = UIColor.blackColor()
    
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
    
    public func makeLabel(text: String, size: CGRect, textColor: UIColor, textSize: CGFloat, addView: AnyObject) -> UILabel {
        let mainlabel = UILabel(frame: size)
        
        labelBasicWork(mainlabel)
        mainlabel.text = text
        mainlabel.textColor = textColor
        mainlabel.font = UIFont(name: "Helvetica", size: textSize)
        
        addView.addSubview(mainlabel)
        return mainlabel
    }
    
    // MARK: Make tool
    func labelBasicWork(label: UILabel) {
        label.numberOfLines = 0
        label.textAlignment = .Left
        label.translatesAutoresizingMaskIntoConstraints = false
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

}
