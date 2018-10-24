//
//  UIStackView+Create.swift
//  Fluky
//
//  Created by Pedro Carrasco on 23/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import UIKit

// MARK: - Create
extension UIStackView {

    static func create(_ axis: NSLayoutConstraint.Axis = .horizontal) -> UIStackView {

        let stackView = UIStackView()
        stackView.axis = axis
        stackView.spacing = Spacing.S

        return stackView
    }
}
