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
    private let containerStackView: UIStackView = .create {
        $0.axis = .vertical
        $0.spacing = Spacing.S
    }
    private let topStackView: UIStackView = .create {
        $0.axis = .horizontal
        $0.spacing = Spacing.S
    }
    private let bottomStackView: UIStackView = .create {
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
private extension FlukyBoxView {

    func configure(size: CGFloat) {

        addSubviews()
        defineConstraints(size: size)
    }

    func addSubviews() {

        addSubviews(containerStackView)
        containerStackView.addArrangedSubviews(topStackView, bottomStackView)
        topStackView.addArrangedSubviews(imageViews[0], imageViews[1])
        bottomStackView.addArrangedSubviews(imageViews[2], imageViews[3])
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

        imageViews.forEach { imageView in

            guard let index = imageViews.index(of: imageView) else { return }

            DispatchQueue.main.asyncAfter(deadline: .now() + (0.15 * Double(index)), execute: {
                imageView.animate(with: self.images)
            })
        }
    }

    func stop() {

        imageViews.forEach { $0.autoRepeat = false }
    }
}

