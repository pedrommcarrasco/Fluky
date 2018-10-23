//
//  FlukyProtocol+Default.swift
//  Fluky
//
//  Created by Pedro Carrasco on 23/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import Foundation

// MARK: - Default
extension FlukyProtocol where Self: UIView {

    func start() {

        animate()
    }

    func stop() {

        imageViews.forEach { $0.autoRepeat = false }
    }
}
