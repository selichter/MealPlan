//
//  Tests_iOS.swift
//  Tests iOS
//
//  Created by Sarah Lichter on 4/20/21.
//

import XCTest

class Tests_iOS: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        app.launch()
    }
    
    
    func testNavigateToMenuView() {
//        swiftui lists are built on uitables
        app.tables.buttons["Menu"].tap()
        XCTAssert(app.staticTexts["Weekly Menu"].exists)
        XCTAssert(app.navigationBars.buttons["MealPlan"].exists)
    }
    
}
