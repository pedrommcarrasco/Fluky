//
//  FlukyImageView.swift
//  Fluky
//
//  Created by Pedro Carrasco on 23/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import Foundation

// MARK: - FluckyImageView
final class FluckyImageView: UIImageView {

    var autoRepeat: Bool = true

    func animate(with images: [UIImage]) {

        transform = CGAffineTransform(scaleX: CGFloat.leastNonzeroMagnitude, y: CGFloat.leastNonzeroMagnitude)
            .rotated(by: CGFloat.pi)

        image = images.randomElement()

        UIView.animate(withDuration: Duration.M, delay: 0, usingSpringWithDamping: Damping.L,
                       initialSpringVelocity: 0.0, options: [.curveEaseOut], animations: {

                        self.transform = .identity

        }) { _ in

            UIView.animate(withDuration: Duration.M, delay: Duration.L, usingSpringWithDamping: Damping.L,
                           initialSpringVelocity: 0.0, options: [.curveEaseIn], animations: {

                            self.transform = CGAffineTransform(scaleX: 0.0000000000001, y: 0.0000000000001).rotated(by: CGFloat.pi)
            }) { _ in

                if self.autoRepeat {
                    self.animate(with: images)
                }
            }
        }
    }
}
