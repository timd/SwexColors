//
//  HexColorConverterTests.swift
//  HexColorConverterTests
//
//  Created by Tim Ducket on 02.02.18.
//  Copyright © 2018 Oetker Digital GmbH. All rights reserved.
//

import XCTest
@testable import HexColorConverter

class HexColorConverterTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_WhenProvidedWithHexStringThatIsTooShort_shouldReturnNil() {

        let shortTestString = "12345"
        let resultA = UIColor.colorFromHexString(hex: shortTestString)
        XCTAssertNil(resultA, "expecting nil, got something else")

        let shortTestStringWithHash = "#12345"
        let resultB = UIColor.colorFromHexString(hex: shortTestStringWithHash)
        XCTAssertNil(resultB, "expecting nil, got something else")

    }
    
    func test_WhenProvidedWithHexStringThatIsTooLong_shouldReturnNil() {

        let longTestString = "1234567"
        let resultA = UIColor.colorFromHexString(hex: longTestString)
        XCTAssertNil(resultA, "expecting nil, got something else")
        
        let longTestStringWithHash = "#1234567"
        let resultB = UIColor.colorFromHexString(hex: longTestStringWithHash)
        XCTAssertNil(resultB, "expecting nil, got something else")

    }
    
}
