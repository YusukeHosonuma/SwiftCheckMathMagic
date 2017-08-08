//
//  UInt+extension.swift
//  SwiftCheckMathMagic
//
//  Created by Yusuke on 2017/08/08.
//  Copyright © 2017 Yusuke. All rights reserved.
//

import Foundation

public extension UInt {
    var even: Bool { return self % 2 == 0 }
    var odd:  Bool { return !even }
    var oneDigit: UInt {
        return (self < 10)
            ? self
            : UInt(String("\(self)".characters.last!))!
    }
}
