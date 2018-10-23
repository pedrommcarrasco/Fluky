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
    private let imageView = UIImageView()

    // MARK: Private Properties
    private let images: [UIImage]

    // MARK: Initializer
    init(images: [UIImage], size: CGFloat) {

        self.images = images

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

        addSubviews(imageView)
    }

    func defineConstraints(size: CGFloat) {

        imageView.centerXAnchor.constrain(to: centerXAnchor)
        imageView.centerYAnchor.constrain(to: centerYAnchor)
        imageView.heightAnchor.constrain(to: size)
        imageView.widthAnchor.constrain(to: imageView.heightAnchor)

        imageView.backgroundColor = .orange
    }
}

// MARK: - Animation Interface
extension FlukySingleView {

    func start() {

        imageView.transform = CGAffineTransform(scaleX: 0.001, y: 0.001).rotated(by: CGFloat.pi)

        Static.animate { self.imageView.transform = .identity }
    }

    func stop() {}
}
