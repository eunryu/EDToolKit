//
//  ExtensionKit.swift
//  Pods
//
//  Created by 김현지 on 2016. 11. 11..
//
//

import Foundation
import UIKit

//MARK: String
extension String{
    var localized:String{
        return NSLocalizedString(self, tableName: nil, bundle: NSBundle.mainBundle(), value: "", comment: "")
    }
    func localizedWithComment(comment:String) -> String{
        return NSLocalizedString(self, tableName: nil, bundle: NSBundle.mainBundle(), value: "", comment: comment)
    }
    func matchPattern(patStr:String)->Bool {
        var isMatch:Bool = false
        do {
            let regex = try NSRegularExpression(pattern: patStr, options: [.CaseInsensitive])
            //            let result = regex.firstMatchInString(in: self, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, characters.count))
            let result = regex.firstMatchInString(self, options: NSMatchingOptions(rawValue: UInt(0)), range: NSMakeRange(0, characters.count))
            
            if (result != nil)
            {
                isMatch = true
            }
        }
        catch {
            isMatch = false
        }
        return isMatch
    }
}
