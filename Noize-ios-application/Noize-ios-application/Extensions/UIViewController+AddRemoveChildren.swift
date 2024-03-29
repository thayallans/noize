//
//  UIViewController+AddRemoveChildren.swift
//  Noize-ios-application
//
//  Created by Thayallan Srinathan on 2018-10-09.
//  Copyright © 2018 Noize. All rights reserved.
//

import UIKit

extension UIViewController {
    func add(childController: UIViewController) {
        addChild(childController)
        view.addSubview(childController.view)
        childController.didMove(toParent: self)
    }
    
    func remove(childController: UIViewController) {
        childController.willMove(toParent: nil)
        childController.view.removeFromSuperview()
        childController.removeFromParent()
    }
}
