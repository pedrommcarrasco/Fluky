//
//  FlukySingleView.swift
//  Fluky
//
//  Created by Pedro Carrasco on 23/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import UIKit

// MARK: - FlukySingleView
final class FlukySingleView: FlukyView {

    // MARK: Outlets
    let imageViews: [FluckyImageView]

    // MARK: Properties
    let images: [UIImage]

    // MARK: Initializer
    init(images: [UIImage], size: CGFloat) {

        self.images = images
        self.imageViews = [FluckyImageView()]

        super.init(frame: .zero)

        configure(size: size)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Configuration
private extension FlukySingleView {

    func configure(size: CGFloat) {

        addSubviews()
        defineConstraints(size: size)
    }

    func addSubviews() {

        addSubviews(imageViews)
    }

    func defineConstraints(size: CGFloat) {
        
        imageViews.first?.topAnchor.constrain(.greaterThanOrEqual, to: topAnchor)
        imageViews.first?.leadingAnchor.constrain(.greaterThanOrEqual, to: leadingAnchor)
        imageViews.first?.centerXAnchor.constrain(to: centerXAnchor)
        imageViews.first?.centerYAnchor.constrain(to: centerYAnchor)
        imageViews.first?.heightAnchor.constrain(to: size)
        imageViews.first?.widthAnchor.constrain(to: size)
    }
}
