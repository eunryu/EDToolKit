//
//  MakeUITableViewKit.swift
//  Pods
//
//  Created by 은아월 on 2017. 4. 28..
//
//

import Foundation
import UIKit

open class MakeUITableViewKit {
    
    open let shared = MakeUITableViewKit()
    
    open func makeTableView(size: CGSize, addView: AnyObject) -> UITableView {
        let mainTableView = UITableView(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height), style: .plain)
        mainTableView.separatorStyle = .none
        mainTableView.backgroundColor = UIColor.clear
        mainTableView.translatesAutoresizingMaskIntoConstraints = false
        addView.addSubview(mainTableView)
        
        return mainTableView
    }
}

public extension UITableView {
    public func registCells(cellData: [AnyClass]) {
        for i in 0...cellData.count - 1 {
            self.register(cellData[i].self, forCellReuseIdentifier: String(describing: cellData[i].self))
        }
    }
}
