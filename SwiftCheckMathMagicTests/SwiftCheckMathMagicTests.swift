//
//  SwiftCheckMathMagicTests.swift
//  SwiftCheckMathMagicTests
//
//  Created by Yusuke on 2017/08/08.
//  Copyright © 2017 Yusuke. All rights reserved.
//

import XCTest
import SwiftCheck
@testable import SwiftCheckMathMagic

class SwiftCheckMathMagicTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_solveNumbers() {
        XCTAssertEqual(3, solveNumbers(6, 3, 9,  2,  1, 7))
        XCTAssertEqual(2, solveNumbers(4, 2, 8,  1,  5, 3))
        XCTAssertEqual(0, solveNumbers(1, 2, 1, 11, 17, 4))
    }
    
    func test_solveNumbers_property() {

        property("どんな数字に対しても「b + e」が偶数と奇数の組み合わせであれば「a + f + 5」の1桁目、そうでなければ「a + f」の1桁目になること")
            <- forAll { (a: UInt, b: UInt, c: UInt, d: UInt, e: UInt, f: UInt) in
                
            let answer = solveNumbers(a, b, c, d, e, f)
                
            let isEvenAndOdd = (b.even && e.odd) || (b.odd && e.even)
            return isEvenAndOdd
                ? answer == (a + f + 5).oneDigit
                : answer == (a + f).oneDigit
        }
    }
}
