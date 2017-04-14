//
//  MakeUIButtonKit.swift
//  Pods
//
//  Created by 은아월 on 2017. 4. 13..
//
//

import Foundation
import UIKit

public class MakeUIButtonKit {
    
    open static let shared = MakeUIButtonKit()
    public init() {
        
    }
    
    open func makeButton(title: String, contentSize: CGRect, addView: AnyObject) -> UIButton {
        let mainButton: UIButton = UIButton(frame: contentSize)
        buttonBasicWork(button: mainButton)
        mainButton.setTitle(title, for: .normal)
        addView.addSubview(mainButton)
        
        return mainButton
    }
    
    open func makeButton(titleImage: UIImage, contentSize: CGRect, addView: AnyObject) -> UIButton {
        let mainButton: UIButton = UIButton(frame: contentSize)
        buttonBasicWork(button: mainButton)
        mainButton.setImage(titleImage, for: .normal)
        addView.addSubview(mainButton)
        
        return mainButton
    }
    
    open func textDecoration(button: UIButton, fontName: String?, fontSize: CGFloat?, color: UIColor?, pressColor: UIColor?) {
        if fontSize != nil && fontName != nil {
            button.titleLabel!.font = UIFont(name: fontName!, size: fontSize!)
        } else {
            if fontSize != nil {
                button.titleLabel!.font = UIFont(name: "Helvetica", size: fontSize!)
            } else if fontName != nil {
                button.titleLabel!.font = UIFont(name: fontName!, size: 14.0)
            }
        }
        
        if color != nil {
            button.setTitleColor(color!, for: .normal)
        }
        
        if pressColor != nil {
            button.setTitleColor(pressColor!, for: .highlighted)
        }
    }
    
    open func containerDecoration(button: UIButton, layerColor: UIColor?, layerWidth: CGFloat?, bgColor: UIColor?, corner: CGFloat?) {
        if layerColor != nil && layerWidth != nil {
            button.layer.borderColor = layerColor!.cgColor
            button.layer.borderWidth = layerWidth!
        } else {
            if layerColor != nil {
                button.layer.borderColor = layerColor!.cgColor
            } else if layerWidth != nil {
                button.layer.borderWidth = layerWidth!
            }
        }
        
        if bgColor != nil {
            button.backgroundColor = bgColor!
        }
        
        if corner != nil {
            button.layer.cornerRadius = corner!
        }
    }
    
    // MARK : Make Button basic
    func buttonBasicWork(button: UIButton) {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica".localized, size: 14)
    }
}
