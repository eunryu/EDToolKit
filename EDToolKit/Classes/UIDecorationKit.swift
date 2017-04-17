//
//  UIDecorationKit.swift
//  Pods
//
//  Created by 은아월 on 2017. 4. 17..
//
//

import Foundation
import UIKit

public class UIDecorationKit {
    
    open static let shared = UIDecorationKit()
    public init() {
        
    }
    
    // 공통 함수 모음. 글자 꾸미기 라던가, 모양 꾸미기 관련 모아놓음
    open func textDecoration(view: AnyObject, fontName: String?, fontSize: CGFloat?, color: UIColor?, pressColor: UIColor?) {
        // UILabel, UIButton, 각 Button 클래스, UITextField, UITextView
    }
}
