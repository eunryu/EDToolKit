//
//  MakeUITextFieldKit.swift
//  Pods
//
//  Created by 은아월 on 2017. 4. 14..
//
//

import Foundation
import UIKit

public class MakeUITextFieldKit {

    open static let shared = MakeUITextFieldKit()
    public init() {
        
    }
    
    // MARK : 2017.04.26 Size(CGRect) -> Size(CGSize) 로 변경
    open func makeTextField(placeholder: String, size: CGSize, addView: AnyObject) -> UITextField {
        let mainTextField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        
        mainTextField.placeholder = placeholder
        mainTextField.translatesAutoresizingMaskIntoConstraints = false
        mainTextField.textColor = UIColor.black
        mainTextField.font = UIFont(name: "Helvetica", size: 14)
        addView.addSubview(mainTextField)
        
        return mainTextField
    }
    // ------------------------
    
    @available(*, deprecated: 4.1.0, message: "extension으로 대체 예정")
    open func textDecoration(field: UITextField, fontSize: CGFloat?, fontName: String?, color: UIColor?, alignment: NSTextAlignment?) {
        if fontSize != nil && fontName != nil {
            field.font = UIFont(name: fontName!, size: fontSize!)
        } else {
            if fontSize != nil {
                field.font = UIFont(name: "Helvetica", size: fontSize!)
            } else if fontName != nil {
                field.font = UIFont(name: fontName!, size: 14.0)
            }
        }
        
        if color != nil {
            field.textColor = color!
        }
        
        if alignment != nil {
            field.textAlignment = alignment!
        }
    }
    
    @available(*, deprecated: 4.1.0, message: "extension으로 대체 예정")
    open func contentDecoration(field: UITextField, layerColor: UIColor?, bgColor: UIColor?, layerWidth: CGFloat?, corner: CGFloat?) {
        if layerColor != nil && layerWidth != nil {
            field.layer.borderColor = layerColor!.cgColor
            field.layer.borderWidth = layerWidth!
        } else {
            if layerColor != nil {
                field.layer.borderColor = layerColor!.cgColor
            } else if layerWidth != nil {
                field.layer.borderWidth = layerWidth!
            }
        }
        
        if bgColor != nil {
            field.backgroundColor = bgColor!
        }
        
        if corner != nil {
            field.layer.cornerRadius = corner!
        }
    }
}

extension UITextField {
    func textDecoration(fontSize: CGFloat?, fontName: String?, color: UIColor?, alignment: NSTextAlignment?) {
        if fontSize != nil && fontName != nil {
            self.font = UIFont(name: fontName!, size: fontSize!)
        } else {
            if fontSize != nil {
                self.font = UIFont(name: "Helvetica", size: fontSize!)
            } else if fontName != nil {
                self.font = UIFont(name: fontName!, size: 14.0)
            }
        }
        
        if color != nil {
            self.textColor = color!
        }
        
        if alignment != nil {
            self.textAlignment = alignment!
        }
    }
    
    func contentDecoration(layerColor: UIColor?, bgColor: UIColor?, layerWidth: CGFloat?, corner: CGFloat?) {
        if layerColor != nil && layerWidth != nil {
            self.layer.borderColor = layerColor!.cgColor
            self.layer.borderWidth = layerWidth!
        } else {
            if layerColor != nil {
                self.layer.borderColor = layerColor!.cgColor
            } else if layerWidth != nil {
                self.layer.borderWidth = layerWidth!
            }
        }
        
        if bgColor != nil {
            self.backgroundColor = bgColor!
        }
        
        if corner != nil {
            self.layer.cornerRadius = corner!
        }
    }
}
