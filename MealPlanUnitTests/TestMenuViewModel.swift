//
//  TestMenuViewModel.swift
//  MealPlanUnitTests
//
//  Created by Sarah Lichter on 4/24/21.
//

import XCTest
@testable import MealPlan

class TestMenuViewModel: XCTestCase {
    
    func testAddToMenuAppendsMealToMenuArray() {
        let menuVM = MenuViewModel()
        menuVM.addMealToMenu(food: "New Food", mealOfDay: "Breakfast")
        XCTAssertEqual(menuVM.menu.last?.food, "New Food")
        XCTAssertEqual(menuVM.menu.last?.mealOfDay, "Breakfast")
    }

}
