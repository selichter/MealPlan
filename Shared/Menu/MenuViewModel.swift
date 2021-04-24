//
//  MenuViewModel.swift
//  MealPlan
//
//  Created by Sarah Lichter on 4/24/21.
//

import Foundation

class MenuViewModel: ObservableObject {
    var menu: [Meal] = [eggs, pancakes, burger]
    
    init() {}
    
    func addMealToMenu(food: String, mealOfDay: String) {
        let newMeal = Meal(food: food, mealOfDay: mealOfDay)
        menu.append(newMeal)
    }
}
