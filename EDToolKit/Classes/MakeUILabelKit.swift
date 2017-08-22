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
    open static let COLOR_BASIC = UIColor.black
    fileprivate var isAction: Void = Void()
    
    private var isActionTest: CompletionHandler!
    open static let shared = MakeUILabelKit()
    
    public init() {
    
    }
    
    // MARK: make UILabel
    // MARK : 2017.04.26 Size(CGRect) -> Size(CGSize) 로 변경, 상단함수 곧 Deprecated 에정.
    @available(*, deprecated: 4.0, message: "없어질 예정. 대신 size(CGRect) -> size(CGSize) 로 대체")
    open func makeLabel(_ text: String, size: CGSize, addView: AnyObject) -> UILabel {
        let mainLabel = UILabel(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        
        labelBasicWork(mainLabel)
        mainLabel.text = text
        mainLabel.textColor = UIColor.black
        mainLabel.font = UIFont(name: "Helvetica", size: 14.0)
        
        addView.addSubview(mainLabel)
        return mainLabel
    }
    
    @available(*, deprecated: 4.0, message: "없어질 예체. 대신 size(CGRect) -> size(CGSize) 로 대체")
    open func makeLabel(_ spacingText: String, spacingSize: CGFloat, size: CGSize, addView: AnyObject) -> UILabel {
        let mainLabel = UILabel(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        
        labelBasicWork(mainLabel)
        
        let style = NSMutableParagraphStyle()
        style.lineSpacing = spacingSize
        mainLabel.attributedText = NSAttributedString(string: spacingText, attributes: [NSAttributedStringKey.paragraphStyle:style])
        
        mainLabel.textColor = UIColor.black
        mainLabel.font = UIFont(name: "Helvetica", size: 14.0)
        
        addView.addSubview(mainLabel)
        return mainLabel
    }
    
    // -----------------------
    
    @available(*, deprecated: 4.1.0, message: "extension으로 대체 예정")
    open func textDecoration(_ label: UILabel, fontSize: CGFloat?, fontName: String?, color: UIColor?, alignment: NSTextAlignment?) {
        if fontSize != nil && fontName != nil {
            label.font = UIFont(name: fontName!, size: fontSize!)
        } else {
            if fontSize != nil {
                label.font = UIFont(name: "Helvetica", size: fontSize!)
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
    
    // MARK : 2017.04.26 lineDecoration 추가
    @available(*, deprecated: 4.1.0, message: "extension으로 대체 예정")
    open func textLineDecoration(label: UILabel, maxLine: Int, breakMode: NSLineBreakMode?) {
        label.numberOfLines = maxLine
        
        if breakMode != nil {
            label.lineBreakMode = breakMode!
        } else {
            label.lineBreakMode = .byWordWrapping
        }
    }
    // -------------------------
    
    @available(*, deprecated: 4.1.0, message: "extension으로 대체 예정")
    open func contentDecoration(label: UILabel, layerColor: UIColor?, bgColor: UIColor?, layerWidth: CGFloat?, corner: CGFloat?) {
        if layerColor != nil && layerWidth != nil {
            label.layer.borderColor = layerColor!.cgColor
            label.layer.borderWidth = layerWidth!
        } else {
            if layerColor != nil {
                label.layer.borderColor = layerColor!.cgColor
            } else if layerWidth != nil {
                label.layer.borderWidth = layerWidth!
            }
        }
        
        if bgColor != nil {
            label.backgroundColor = bgColor!
        }
        
        if corner != nil {
            label.layer.cornerRadius = corner!
        }
    }
    
    @available(*, deprecated: 4.1.0, message: "extension으로 대체 예정")
    open func setSpacingText(label: UILabel, text: String, spacingSize: CGFloat) {
        let style = NSMutableParagraphStyle()
        style.lineSpacing = spacingSize
        label.attributedText = NSAttributedString(string: text, attributes: [NSAttributedStringKey.paragraphStyle:style])
    }
    
    open func addTouchAction(_ label: UILabel, isVoid: @escaping CompletionHandler, isAction: Selector) {
        let isGesture = UITapGestureRecognizer(target: label, action: isAction)
        label.addGestureRecognizer(isGesture)
    }
    
    // MARK: Make tool
    func labelBasicWork(_ label: UILabel) {
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
    }

}

extension UILabel {
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
    
    func textLineDecoration(maxLine: Int, breakMode: NSLineBreakMode?) {
        self.numberOfLines = maxLine
        
        if breakMode != nil {
            self.lineBreakMode = breakMode!
        } else {
            self.lineBreakMode = .byWordWrapping
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
    
    func setSpacingText(text: String, spacingSize: CGFloat) {
        let style = NSMutableParagraphStyle()
        style.lineSpacing = spacingSize
        self.attributedText = NSAttributedString(string: text, attributes: [NSAttributedStringKey.paragraphStyle:style])
    }
}
