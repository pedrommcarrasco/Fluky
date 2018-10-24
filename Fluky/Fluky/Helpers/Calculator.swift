//
//  Calculator.swift
//  Fluky
//
//  Created by Pedro Carrasco on 23/10/2018.
//  Copyright © 2018 Pedro Carrasco. All rights reserved.
//

import Foundation

// MARK: - Calculator
struct Calculator {

    // MARK: Constant
    private enum Constant {

        static let delay = 0.15
    }
}

// MARK: - Internal Functions
extension Calculator {

    static func safeSquare(of number: Int) -> Int {

        return Int(ceil(sqrt(Double(number))))
    }

    static func delay(for index: Int) -> DispatchTime {

        return DispatchTime.now() + (Constant.delay * Double(index))
    }
}
