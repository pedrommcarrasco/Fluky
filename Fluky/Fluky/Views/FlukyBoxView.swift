//
//  FlukyBoxView.swift
//  Fluky
//
//  Created by Pedro Carrasco on 23/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import UIKit

// MARK: - FlukyBoxView
final class FlukyBoxView: FlukyView {

    // MARK: Outlets
    private let imageViews: [FluckyImageView]
    private let stackViews: [UIStackView]
    private let containerStackView: UIStackView = .create {
        $0.axis = .vertical
        $0.distribution = .equalCentering
        $0.alignment = .center
        $0.spacing = Spacing.S
    }
    private let chunkCount: Int

    // MARK: Private Properties
    private let images: [UIImage]

    // MARK: Initializer
    init(images: [UIImage], size: CGFloat) {

        self.images = images
        self.chunkCount = Calculator.safeSquare(of: images.count)
        self.imageViews = images.transform(into: { return FluckyImageView.create() })
        self.stackViews = (0..<chunkCount).transform(into: { UIStackView.create() })

        super.init(frame: .zero)

        configure(size: size)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Configuration
private extension FlukyBoxView {

    func configure(size: CGFloat) {

        addSubviews()
        defineConstraints(size: size)
    }

    func addSubviews() {

        addSubviews(containerStackView)
        containerStackView.addArrangedSubviews(stackViews)

        let imageViewsChunk = imageViews.chunk(into: chunkCount)
        zip(imageViewsChunk, stackViews).forEach { $1.addArrangedSubviews($0) }
    }

    func defineConstraints(size: CGFloat) {

        containerStackView.centerXAnchor.constrain(to: centerXAnchor)
        containerStackView.centerYAnchor.constrain(to: centerYAnchor)

        imageViews.forEach {
            $0.heightAnchor.constrain(to: size)
            $0.widthAnchor.constrain(to: $0.heightAnchor)
        }
    }
}

// MARK: - Animation Interface
extension FlukyBoxView {

    func start() {

        animate(imageViews, with: images)
    }

    func stop() {

        imageViews.forEach { $0.autoRepeat = false }
    }
}
