//
//  MakeUITextViewKit.swift
//  Pods
//
//  Created by 은아월 on 2017. 4. 14..
//
//

import Foundation

public class MakeUITextViewKit {
    
    open static let shared = MakeUITextViewKit()
    public init() {
        
    }
    
    open func makeTextView(text: String, size: CGRect, addView: AnyObject) -> UITextView {
        let mainTextView: UITextView = UITextView(frame: size)
        
        mainTextView.text = text
        mainTextView.translatesAutoresizingMaskIntoConstraints = false
        mainTextView.textColor = UIColor.black
        mainTextView.font = UIFont(name: "Helvetica", size: 14)
        addView.addSubview(mainTextView)
        
        return mainTextView
    }
    
    open func makeTextView(spacingText: String, spacingSize: CGFloat, size: CGRect, addView: AnyObject) -> UITextView {
        let mainTextView: UITextView = UITextView(frame: size)
        
        let style = NSMutableParagraphStyle()
        style.lineSpacing = spacingSize
        mainTextView.attributedText = NSAttributedString(string: spacingText, attributes: [NSParagraphStyleAttributeName:style])
        
        mainTextView.translatesAutoresizingMaskIntoConstraints = false
        mainTextView.textColor = UIColor.black
        mainTextView.font = UIFont(name: "Helvetica", size: 14)
        addView.addSubview(mainTextView)
        
        return mainTextView
    }
    
    open func textDecoration(textView: UITextView, fontSize: CGFloat?, fontName: String?, color: UIColor?, alignment: NSTextAlignment?) {
        if fontSize != nil && fontName != nil {
            textView.font = UIFont(name: fontName!, size: fontSize!)
        } else {
            if fontSize != nil {
                textView.font = UIFont(name: "Helvetica", size: fontSize!)
            } else if fontName != nil {
                textView.font = UIFont(name: fontName!, size: 14.0)
            }
        }
        
        if color != nil {
            textView.textColor = color!
        }
        
        if alignment != nil {
            textView.textAlignment = alignment!
        }
    }
    
    open func contentDecoration(textView: UITextView, layerColor: UIColor?, bgColor: UIColor?, layerWidth: CGFloat?, corner: CGFloat?) {
        if layerColor != nil && layerWidth != nil {
            textView.layer.borderColor = layerColor!.cgColor
            textView.layer.borderWidth = layerWidth!
        } else {
            if layerColor != nil {
                textView.layer.borderColor = layerColor!.cgColor
            } else if layerWidth != nil {
                textView.layer.borderWidth = layerWidth!
            }
        }
        
        if bgColor != nil {
            textView.backgroundColor = bgColor!
        }
        
        if corner != nil {
            textView.layer.cornerRadius = corner!
        }
    }
    
    open func setSpacingText(textView: UITextView, text: String, spacingSize: CGFloat) {
        let style = NSMutableParagraphStyle()
        style.lineSpacing = spacingSize
        textView.attributedText = NSAttributedString(string: text, attributes: [NSParagraphStyleAttributeName:style])
    }
}
