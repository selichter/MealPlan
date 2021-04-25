//
//  MenuViewTests.swift
//  Tests macOS
//
//  Created by Sarah Lichter on 4/22/21.
//

import XCTest
@testable import MealPlan

class MenuViewTests: XCTestCase {
    let app = XCUIApplication()
    var window: XCUIElement!

    override func setUp() {
        app.launch()
        window = app.windows["MealPlan"]
        window.outlines.buttons["Menu"].click()
    }

    func testMenuPageHeadingIsDisplayed() throws {
        XCTAssert(window.staticTexts["Weekly Menu"].exists)
    }
    
    
    func testTableHeadingIsDisplayed() {
        window.outlines.buttons["Menu"].click()
        XCTAssert(window.staticTexts["Food"].exists)
        XCTAssert(window.staticTexts["Meal of Day"].exists)
    }
    
    func testAddMealToMenu() {
        window.tables.buttons["+ New"].click()
        window.tables.textFields["Food"].click()
        window.outlines.cells.containing(.button, identifier: "default").element.typeText("Eggs and Bacon")
        window.tables.menuButtons["Meal"].click()
        window.tables.menuItems["Lunch"].click()
        window.tables.buttons["checkmark"].click()
        XCTAssertEqual(window.staticTexts["Eggs and Bacon"].value as! String?, "Eggs and Bacon")
        XCTAssertEqual(window.staticTexts["Lunch"].value as! String?, "Lunch" )
    }
        
}
