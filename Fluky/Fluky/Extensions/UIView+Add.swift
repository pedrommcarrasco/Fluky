//
//  UIView+Add.swift
//  Fluky
//
//  Created by Pedro Carrasco on 22/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import UIKit

// MARK: - Add
extension UIView {

    func addSubviews(_ views: UIView ...) {

        views.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview($0)
        }
    }

    func addSubviews(_ views: [UIView]) {

        views.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview($0)
        }
    }
}
