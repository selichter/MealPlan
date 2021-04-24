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
        window/*@START_MENU_TOKEN@*/.tables.buttons["+ New"]/*[[".splitGroups[\"SwiftUI.ModifiedContent<SwiftUI.ModifiedContent<MealPlan.Sidebar, SwiftUI._BackgroundModifier<SwiftUI.Color>>, SwiftUI._EnvironmentKeyWritingModifier<SwiftUI.ColorScheme>>-1-AppWindow-1, SidebarNavigationView\"]",".scrollViews.tables",".tableRows",".cells.buttons[\"+ New\"]",".buttons[\"+ New\"]",".tables"],[[[-1,5,2],[-1,1,2],[-1,0,1]],[[-1,5,2],[-1,1,2]],[[-1,4],[-1,3],[-1,2,3]],[[-1,4],[-1,3]]],[0,0]]@END_MENU_TOKEN@*/.click()
        window/*@START_MENU_TOKEN@*/.tables.textFields["Food"]/*[[".splitGroups[\"SwiftUI.ModifiedContent<SwiftUI.ModifiedContent<MealPlan.Sidebar, SwiftUI._BackgroundModifier<SwiftUI.Color>>, SwiftUI._EnvironmentKeyWritingModifier<SwiftUI.ColorScheme>>-1-AppWindow-1, SidebarNavigationView\"]",".scrollViews.tables",".tableRows",".cells.textFields[\"Food\"]",".textFields[\"Food\"]",".tables"],[[[-1,5,2],[-1,1,2],[-1,0,1]],[[-1,5,2],[-1,1,2]],[[-1,4],[-1,3],[-1,2,3]],[[-1,4],[-1,3]]],[0,0]]@END_MENU_TOKEN@*/.click()
        window/*@START_MENU_TOKEN@*/.outlines.cells.containing(.button, identifier:"default").element/*[[".splitGroups[\"SwiftUI.ModifiedContent<SwiftUI.ModifiedContent<MealPlan.Sidebar, SwiftUI._BackgroundModifier<SwiftUI.Color>>, SwiftUI._EnvironmentKeyWritingModifier<SwiftUI.ColorScheme>>-1-AppWindow-1, SidebarNavigationView\"]",".scrollViews.outlines",".outlineRows",".cells.containing(.button, identifier:\"Default\").element",".cells.containing(.button, identifier:\"default\").element",".outlines"],[[[-1,5,2],[-1,1,2],[-1,0,1]],[[-1,5,2],[-1,1,2]],[[-1,4],[-1,3],[-1,2,3]],[[-1,4],[-1,3]]],[0,0]]@END_MENU_TOKEN@*/.typeText("Eggs and Bacon")
        window/*@START_MENU_TOKEN@*/.tables.popUpButtons["MealPicker"]/*[[".splitGroups[\"SwiftUI.ModifiedContent<SwiftUI.ModifiedContent<MealPlan.Sidebar, SwiftUI._BackgroundModifier<SwiftUI.Color>>, SwiftUI._EnvironmentKeyWritingModifier<SwiftUI.ColorScheme>>-1-AppWindow-1, SidebarNavigationView\"]",".scrollViews.tables",".tableRows",".cells.popUpButtons[\"MealPicker\"]",".popUpButtons[\"MealPicker\"]",".tables"],[[[-1,5,2],[-1,1,2],[-1,0,1]],[[-1,5,2],[-1,1,2]],[[-1,4],[-1,3],[-1,2,3]],[[-1,4],[-1,3]]],[0,0]]@END_MENU_TOKEN@*/.click()
        window/*@START_MENU_TOKEN@*/.tables.menuItems["Lunch"]/*[[".splitGroups[\"SwiftUI.ModifiedContent<SwiftUI.ModifiedContent<MealPlan.Sidebar, SwiftUI._BackgroundModifier<SwiftUI.Color>>, SwiftUI._EnvironmentKeyWritingModifier<SwiftUI.ColorScheme>>-1-AppWindow-1, SidebarNavigationView\"]",".scrollViews.tables",".tableRows",".cells",".popUpButtons[\"MealPicker\"]",".menus.menuItems[\"Lunch\"]",".menuItems[\"Lunch\"]",".tables"],[[[-1,7,2],[-1,1,2],[-1,0,1]],[[-1,7,2],[-1,1,2]],[[-1,6],[-1,5],[-1,4,5],[-1,3,4],[-1,2,3]],[[-1,6],[-1,5],[-1,4,5],[-1,3,4]],[[-1,6],[-1,5],[-1,4,5]],[[-1,6],[-1,5]]],[0,0]]@END_MENU_TOKEN@*/.click()
        window/*@START_MENU_TOKEN@*/.tables.buttons["Save"]/*[[".splitGroups[\"SwiftUI.ModifiedContent<SwiftUI.ModifiedContent<MealPlan.Sidebar, SwiftUI._BackgroundModifier<SwiftUI.Color>>, SwiftUI._EnvironmentKeyWritingModifier<SwiftUI.ColorScheme>>-1-AppWindow-1, SidebarNavigationView\"]",".scrollViews.tables",".tableRows",".cells.buttons[\"Save\"]",".buttons[\"Save\"]",".tables"],[[[-1,5,2],[-1,1,2],[-1,0,1]],[[-1,5,2],[-1,1,2]],[[-1,4],[-1,3],[-1,2,3]],[[-1,4],[-1,3]]],[0,0]]@END_MENU_TOKEN@*/.click()
        
        XCTAssertEqual(window.staticTexts["Eggs and Bacon"].value as! String?, "Eggs and Bacon")
        XCTAssert(window.staticTexts["Lunch"].exists)

    }
        
}
