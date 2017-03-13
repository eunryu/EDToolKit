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
public extension String{
    var localized:String{
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
    func localizedWithComment(_ comment:String) -> String{
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: comment)
    }
    func matchPattern(_ patStr:String)->Bool {
        var isMatch:Bool = false
        do {
            let regex = try NSRegularExpression(pattern: patStr, options: [.caseInsensitive])
            //            let result = regex.firstMatchInString(in: self, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, characters.count))
            let result = regex.firstMatch(in: self, options: NSRegularExpression.MatchingOptions(rawValue: UInt(0)), range: NSMakeRange(0, characters.count))
            
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
