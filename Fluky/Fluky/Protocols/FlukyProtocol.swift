//
//  FlukyProtocol.swift
//  Fluky
//
//  Created by Pedro Carrasco on 22/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import Foundation

// MARK: FlukyProtocol
public protocol FlukyProtocol {

    // MARK: Typealias
    typealias Static = Self

    // MARK: Properties
    var images: [UIImage] { get }
    var imageViews: [FluckyImageView] { get }

    // MARK: Functions - Animation Interface
    func start()
    func stop()
}
