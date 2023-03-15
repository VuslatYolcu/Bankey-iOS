//
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by Vuslat Yolcu on 15.03.2023.
//

import Foundation
import XCTest

@testable import Bankey

class Test: XCTestCase {
    var formatter : CurrencyFormatter!
    
    // Each time one of your unit test is called, setup() will be called. So if you instantiate your class in here, you don't have to remember the state of your class.
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testSBreakDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }
    
    func testDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(929466.23)
        XCTAssertEqual(result, "$929,466.23")
    }
    
    func testZeroDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(0)
        XCTAssertEqual(result, "$0.00")
    }
}
