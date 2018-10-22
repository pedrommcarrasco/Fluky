//
//  UIStackView+Add.swift
//  Fluky
//
//  Created by Pedro Carrasco on 22/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import Foundation

// MARK: - Add
extension UIStackView {

    func addArrangedSubviews(_ views: UIView ...) {

        views.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            self.addArrangedSubview($0)
        }
    }

    func addArrangedSubviews(_ views: [UIView]) {

        views.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            self.addArrangedSubview($0)
        }
    }
}
