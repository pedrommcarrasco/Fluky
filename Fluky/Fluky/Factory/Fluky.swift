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
    public static func view(as type: FlukyType,
                            with images: [UIImage],
                            size: CGFloat = 30.0) -> FlukyView {
        switch type {
        case .single: return FlukySingleView(images: images, size: size)
        case .linear: return FlukyLinearView(images: images, size: size)
        case .box: return FlukyBoxView(images: images, size: size)
        }
    }
}
