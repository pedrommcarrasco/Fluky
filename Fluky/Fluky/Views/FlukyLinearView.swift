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

    // MARK: Private Properties
    private let images: [UIImage]
    private let imageViews: [UIImageView]

    // MARK:  Initializer
    init(images: [UIImage]) {

        self.images = images
        self.imageViews = images.transform(into: { return Static.imageView() })

        super.init(frame: .zero)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
