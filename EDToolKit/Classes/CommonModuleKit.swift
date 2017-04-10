//
//  CommonModuleKit.swift
//  Pods
//
//  Created by 은아월 on 2017. 4. 10..
//
//

import Foundation
import UIKit

class CommonModuleKit {
    
    static let shared = CommonModuleKit()
    init () {
        
    }
    
    func checkBlank(checkString: String?) -> Bool {
        if checkString == nil || checkString! == "" || (checkString! as NSString).length == 0 {
            return true
        }
        
        return false
    }
    
    func requiredHeight(width: CGFloat, font: UIFont, text: String) -> CGFloat{
        let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = font
        label.text = text
        
        label.sizeToFit()
        
        return label.frame.height
    }
    
    func requiredWidth(width: CGFloat, font: UIFont, text: String) -> CGFloat{
        let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = font
        label.text = text
        
        label.sizeToFit()
        
        return label.frame.width
    }
    
    func requiredFrame(width: CGFloat, font: UIFont, text: String) -> CGSize{
        let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = font
        label.text = text
        
        label.sizeToFit()
        
        return CGSize(width: label.frame.width, height: label.frame.height)
    }
    
}
