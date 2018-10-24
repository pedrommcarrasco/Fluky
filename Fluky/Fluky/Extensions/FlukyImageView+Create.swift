//
//  FlukyImageView+Create.swift
//  Fluky
//
//  Created by Pedro Carrasco on 23/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import UIKit

// MARK: - Create
extension FluckyImageView {

    static func create() -> FluckyImageView {

        let imageView = FluckyImageView()
        imageView.contentMode = .scaleAspectFit

        return imageView
    }
}
