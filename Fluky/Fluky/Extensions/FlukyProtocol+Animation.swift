//
//  FlukyProtocol+Animation.swift
//  Fluky
//
//  Created by Pedro Carrasco on 23/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import UIKit

extension FlukyProtocol where Self: UIView {

    static func animate(_ animation: @escaping () -> Void) {

        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: Spring.L, initialSpringVelocity: 0.0,
                       options: [.repeat, .curveEaseOut, .autoreverse], animations: animation) { _ in }
    }
}
