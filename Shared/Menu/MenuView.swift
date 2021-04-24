//
//  MenuView.swift
//  MealPlan (iOS)
//
//  Created by Sarah Lichter on 4/21/21.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var menuViewModel: MenuViewModel
    
    @State private var addingEntry = false
    @State private var newFood: String = ""
    @State private var newMeal: String = ""
    @State private var isEditing = false
    let availableMeals = ["Breakfast", "Lunch", "Snack", "Dinner"]
    
    
    fileprivate func resetFood() {
        newFood = ""
        newMeal = ""
        addingEntry.toggle()
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Weekly Menu")
                .font(.largeTitle)
                .accessibility(label: Text("Weekly Menu"))
                .padding()
            
            List {
                MenuHeaderView()
                ForEach(menuViewModel.menu) { food in
                    MenuRowView(food: food.food, meal: food.mealOfDay)
                }
                
                if !addingEntry {
                    Button("+ New", action: {
                        addingEntry.toggle()
                    })
                }
                if addingEntry {
                    HStack {
                        TextField("Food", text: $newFood) { _ in } onCommit: {}
                        Picker("Meal", selection: $newMeal) {
                            ForEach(availableMeals, id: \.self) { meal in
                                Text(meal).tag(meal)
                            }
                        }.accessibilityIdentifier("MealPicker")
                        Button("Save", action: {
                            menuViewModel.addMealToMenu(food: newFood, mealOfDay: newMeal)
                            resetFood()
                        })
                    }
                    
                }
                
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(menuViewModel: MenuViewModel())
    }
}
