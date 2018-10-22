//
//  FlukyLinearView.swift
//  Fluky
//
//  Created by Pedro Carrasco on 22/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import UIKit

// MARK: - FlukyLinearView
final class FlukyLinearView: FlukyView {

    // MARK: Outlets
    private let imageViews: [UIImageView]
    private let containerStackView: UIStackView = .create {
        $0.axis = .horizontal
        $0.spacing = Spacing.S
    }

    // MARK: Private Properties
    private let images: [UIImage]

    // MARK: Initializer
    init(images: [UIImage], size: CGFloat) {

        self.images = images
        self.imageViews = images.transform(into: { return Static.imageView() })

        super.init(frame: .zero)

        configure(size: size)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Configuration
private extension FlukyLinearView {

    func configure(size: CGFloat) {

        addSubviews()
        defineConstraints(size: size)
    }

    func addSubviews() {

        addSubviews(containerStackView)
        containerStackView.addArrangedSubviews(imageViews)
    }

    func defineConstraints(size: CGFloat) {

        containerStackView.centerXAnchor.constrain(to: centerXAnchor)
        containerStackView.centerYAnchor.constrain(to: centerYAnchor)

        imageViews.forEach {
            $0.heightAnchor.constrain(to: size)
            $0.widthAnchor.constrain(to: $0.heightAnchor)
            $0.backgroundColor = .orange
        }
    }
}

// MARK: - Animation Interface
extension FlukyLinearView {

    func start() {}

    func stop() {}
}
