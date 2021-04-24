//
//  Tests_macOS.swift
//  Tests macOS
//
//  Created by Sarah Lichter on 4/20/21.
//

import XCTest
@testable import MealPlan


class MealPlanSidebar: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        app.launch()
    }
    
    func testNavigateToMenuView() {
        let window = app.windows["MealPlan"]
        window.outlines.buttons["Menu"].click()
        XCTAssert(window.staticTexts["Weekly Menu"].exists)
    }
    
    func testNavigateToDefaultView() {
//        MealPlan as in app name
        let window = app.windows["MealPlan"]
        window.outlines.buttons["Default"].click()
        XCTAssert(window.staticTexts["Hello, world!"].exists)
    }
}
