//
//  MakeUIImageViewKit.swift
//  Pods
//
//  Created by 은아월 on 2017. 4. 13..
//
//

import Foundation
import UIKit

public class MakeUIImageViewKit {
    
    open static let shared = MakeUIImageViewKit()
    
    public init() {
        
    }
    
    open func makeImageView(image: UIImage, contentSize: CGRect, addView: AnyObject) -> UIImageView {
        let mainImageView: UIImageView = UIImageView(frame: contentSize)
        mainImageView.image = image
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        addView.addSubview(mainImageView)
        
        return mainImageView
    }
    
    open func containerDecoration(imgView: UIImageView, layerColor: UIColor?, layerWidth: CGFloat?, bgColor: UIColor?, corner: CGFloat?) {
        if layerColor != nil && layerWidth != nil {
            imgView.layer.borderColor = layerColor!.cgColor
            imgView.layer.borderWidth = layerWidth!
        } else {
            if layerColor != nil {
                imgView.layer.borderColor = layerColor!.cgColor
            } else if layerWidth != nil {
                imgView.layer.borderWidth = layerWidth!
            }
        }
        
        if bgColor != nil {
            imgView.backgroundColor = bgColor!
        }
        
        if corner != nil {
            imgView.layer.cornerRadius = corner!
        }
    }
}
