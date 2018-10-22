//
//  FlukyView+ImageView.swift
//  Fluky
//
//  Created by Pedro Carrasco on 22/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import UIKit

// MARK: - ImageView
extension FlukyProtocol {

    static func imageView() -> UIImageView {

        let imageView = UIImageView()
        imageView.configure()

        return imageView
    }
}
