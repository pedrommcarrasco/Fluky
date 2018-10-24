//
//  FlukyProtocol+Animate.swift
//  Fluky
//
//  Created by Pedro Carrasco on 23/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import Foundation

// MARK: - Animate
extension FlukyProtocol where Self: UIView {

    func animate() {

        imageViews.forEach { imageView in

            guard let index = imageViews.index(of: imageView) else { return }

            DispatchQueue.main.asyncAfter(deadline: Calculator.delay(for: index),
                                          execute: { imageView.animate(with: self.images) })
        }
    }
}
