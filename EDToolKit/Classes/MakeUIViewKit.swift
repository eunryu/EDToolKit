//
//  MakeUIViewKit.swift
//  Pods
//
//  Created by 은아월 on 2017. 4. 14..
//
//

import Foundation
import UIKit

public class MakeUIViewKit {
    
    open static let shared = MakeUIViewKit()
    public init() {
        
    }
    
//    @available(*, deprecated, message: "곧 없어질 예정, background 있는 것으로 대체.")
    open func makeView(size: CGRect, addView: AnyObject) -> UIView {
        let mainView: UIView = UIView(frame: size)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.backgroundColor = UIColor.clear
        addView.addSubview(mainView)
        return mainView
    }
    
//    @available(*, deprecated, message: "곧 없어질 예정, background 있는 것으로 대체.")
    open func makeView(size: CGRect) -> UIView {
        let mainView: UIView = UIView(frame: size)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.backgroundColor = UIColor.clear
        return mainView
    }
    
    // MARK : 2017.04.26 뷰에 background Color지정 추가, 기존 함수 Deprecated 예정.
    // Size를 CGSize로 받도록 변경
    open func makeView(size: CGSize, background: UIColor?, addView: AnyObject) -> UIView {
        let mainView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        if background != nil {
            mainView.backgroundColor = background!
        } else {
            mainView.backgroundColor = UIColor.clear
        }
        
        addView.addSubview(mainView)
        return mainView
    }
    
    open func makeView(size: CGSize, background: UIColor?) -> UIView {
        let mainView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        if background != nil {
            mainView.backgroundColor = background!
        } else {
            mainView.backgroundColor = UIColor.clear
        }
        
        return mainView
    }
    
    // -----------
    
    open func contentDecoration(view: UIView, layerColor: UIColor?, bgColor: UIColor?, layerWidth: CGFloat?, corner: CGFloat?) {
        if layerColor != nil && layerWidth != nil {
            view.layer.borderColor = layerColor!.cgColor
            view.layer.borderWidth = layerWidth!
        } else {
            if layerColor != nil {
                view.layer.borderColor = layerColor!.cgColor
            } else if layerWidth != nil {
                view.layer.borderWidth = layerWidth!
            }
        }
        
        if bgColor != nil {
            view.backgroundColor = bgColor!
        }
        
        if corner != nil {
            view.layer.cornerRadius = corner!
        }
    }
    
    open func makeBorderView(borderWidth: CGFloat, borderColor: UIColor, addView: AnyObject) -> UIView {
        let borderView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: borderWidth, height : 1))
        borderView.backgroundColor = borderColor
        borderView.translatesAutoresizingMaskIntoConstraints = false
        addView.addSubview(borderView)
        
        return borderView
    }
}
