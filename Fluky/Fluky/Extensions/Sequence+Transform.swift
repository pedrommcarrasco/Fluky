//
//  Sequence+Transform.swift
//  Fluky
//
//  Created by Pedro Carrasco on 22/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import Foundation

// MARK: - Transform
extension Sequence {

    func transform<T>(into transform: () -> T) -> [T] {

        return self.map { _ in return transform() }
    }
}
