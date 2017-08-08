//
//  UInt+extensionTests.swift
//  SwiftCheckMathMagic
//
//  Created by Yusuke on 2017/08/08.
//  Copyright © 2017 Yusuke. All rights reserved.
//

import XCTest

class UInt_extensionTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_even_odd() {
        
        // 1
        XCTAssertTrue (UInt(1).odd)
        XCTAssertFalse(UInt(1).even)
        
        // 2
        XCTAssertTrue (UInt(2).even)
        XCTAssertFalse(UInt(2).odd)
    }
    
    func test_oneDigit() {
        
        // one-digit
        XCTAssertEqual(UInt(1).oneDigit, 1)
        XCTAssertEqual(UInt(3).oneDigit, 3)
        
        // two-digit
        XCTAssertEqual(UInt(21).oneDigit, 1)
        XCTAssertEqual(UInt(63).oneDigit, 3)
    }
}
