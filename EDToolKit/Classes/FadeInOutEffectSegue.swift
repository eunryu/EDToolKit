//
//  FadeInOutEffectSegue.swift
//  Pods
//
//  Created by 은아월 on 2017. 4. 10..
//
//

import Foundation
import UIKit

class FadeInOutEffectSegue: UIStoryboardSegue {
    
    override func perform() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionFade
        
        self.source.navigationController?.view.layer.add(transition, forKey: kCATransition)
        self.source.navigationController?.pushViewController(self.destination, animated: false)
    }
}
