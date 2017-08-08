//
//  MathMagic.swift
//  SwiftCheckMathMagic
//
//  Created by Yusuke on 2017/08/08.
//  Copyright © 2017 Yusuke. All rights reserved.
//

import Foundation

public func solveNumbers(_ n1: UInt, _ n2: UInt, _ n3: UInt, _ n4: UInt, _ n5: UInt, _ n6: UInt) -> UInt {
    return solve([n1, n2, n3, n4, n5, n6])
}

private func solve(_ xs: [UInt]) -> UInt {
    guard xs.count > 1 else { return xs.first! }
    let ys = zip(xs, xs.dropFirst()).map { ($0.0 + $0.1).oneDigit }
    return solve(ys)
}
