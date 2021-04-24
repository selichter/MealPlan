//
//  Meal.swift
//  MealPlan
//
//  Created by Sarah Lichter on 4/24/21.
//

import Foundation

struct Meal: Identifiable {
    let id = UUID()
    let food: String
    let mealOfDay: String
}

let eggs = Meal(food: "eggs", mealOfDay: "Breakfast")
let pancakes = Meal(food: "Pancakes", mealOfDay: "Breakfast")
let burger = Meal(food: "Burger", mealOfDay: "Dinner")
