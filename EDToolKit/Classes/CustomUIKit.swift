//
//  CustomUIKit.swift
//  Pods
//
//  Created by 은아월 on 2017. 4. 10..
//
//

import Foundation
import UIKit

open class ClickBgEffectButton: UIButton {
    @IBInspectable var mainColor: UIColor = UIColor.white {
        didSet {
            self.backgroundColor = mainColor
        }
    }
    
    @IBInspectable var pressColor: UIColor!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open var isHighlighted :Bool {
        get {
            return super.isHighlighted
        }
        set {
            if newValue {
                self.backgroundColor = pressColor
            }
            else {
                self.backgroundColor = mainColor
            }
            super.isHighlighted = newValue
        }
    }
}

open class ClickLayerEffectButton: UIButton {
    @IBInspectable var mainBorderLayer: UIColor = UIColor.white {
        didSet {
            self.layer.borderColor = mainBorderLayer.cgColor
            self.layer.borderWidth = 1
        }
    }
    
    @IBInspectable var pressBorderLayer: UIColor!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open var isHighlighted :Bool {
        get {
            return super.isHighlighted
        }
        set {
            if newValue {
                self.layer.borderColor = pressBorderLayer.cgColor
            }
            else {
                self.layer.borderColor = mainBorderLayer.cgColor
            }
            super.isHighlighted = newValue
        }
    }
}

open class ClickBgAndTextEffectButton: UIButton {
    @IBInspectable var mainBgColor: UIColor = UIColor.white {
        didSet {
            self.backgroundColor = mainBgColor
        }
    }
    @IBInspectable var mainTextColor: UIColor = UIColor.white {
        didSet {
            self.setTitleColor(mainTextColor, for: .normal)
        }
    }
    
    @IBInspectable var pressBgColor: UIColor!
    @IBInspectable var pressTextColor: UIColor = UIColor.white {
        didSet {
            self.setTitleColor(pressTextColor, for: .highlighted)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open var isHighlighted :Bool {
        get {
            return super.isHighlighted
        }
        set {
            if newValue {
                self.backgroundColor = pressBgColor
            }
            else {
                self.backgroundColor = mainBgColor
            }
            super.isHighlighted = newValue
        }
    }
}

open class ClickLayerAndTextEffectButton: UIButton {
    @IBInspectable var mainLayerColor: UIColor = UIColor.white {
        didSet {
            self.layer.borderColor = mainLayerColor.cgColor
            self.layer.borderWidth = 1
        }
    }
    @IBInspectable var mainTextColor: UIColor = UIColor.white {
        didSet {
            self.setTitleColor(mainTextColor, for: .normal)
        }
    }
    @IBInspectable var pressLayerColor: UIColor!
    @IBInspectable var pressTextColor: UIColor = UIColor.white {
        didSet {
            self.setTitleColor(pressTextColor, for: .highlighted)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open var isHighlighted :Bool {
        get {
            return super.isHighlighted
        }
        set {
            if newValue {
                self.layer.borderColor = pressLayerColor.cgColor
            }
            else {
                self.layer.borderColor = mainLayerColor.cgColor
            }
            super.isHighlighted = newValue
        }
    }
}

open class ClickMultiEffectButton: UIButton {
    @IBInspectable var mainLayerColor: UIColor = UIColor.white {
        didSet {
            self.layer.borderWidth = 1
            self.layer.borderColor = mainLayerColor.cgColor
        }
    }
    @IBInspectable var mainTextColor: UIColor = UIColor.white {
        didSet {
            self.setTitleColor(mainTextColor, for: .normal)
        }
    }
    @IBInspectable var mainBgColor: UIColor = UIColor.white {
        didSet {
            self.backgroundColor = mainBgColor
        }
    }
    @IBInspectable var pressLayerColor: UIColor!
    @IBInspectable var pressTextColor: UIColor = UIColor.white {
        didSet {
            self.setTitleColor(pressTextColor, for: .highlighted)
        }
    }
    @IBInspectable var pressBgColor: UIColor!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override open var isHighlighted :Bool {
        get {
            return super.isHighlighted
        }
        set {
            if newValue {
                self.backgroundColor = pressBgColor
                self.layer.borderColor = pressLayerColor.cgColor
            }
            else {
                self.backgroundColor = mainBgColor
                self.layer.borderColor = mainLayerColor.cgColor
            }
            super.isHighlighted = newValue
        }
    }

}
