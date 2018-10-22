//
//  Fluky.swift
//  Fluky
//
//  Created by Pedro Carrasco on 22/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import Foundation

// MARK: - Fluky
public struct Fluky {

    // MARK: Public Static Functions
    public static func view(with type: FlukyType,
                            images: [UIImage],
                            backgroundColor: UIColor,
                            size: CGFloat = 50.0) -> FlukyView {

        let view: FlukyView

        switch type {

        case .linear:
            view = FlukyLinearView(images: images, size: size)


        case .box:
            view = FlukyLinearView(images: images, size: size) // TODO
        }

        view.backgroundColor = backgroundColor

        return view
    }
}
