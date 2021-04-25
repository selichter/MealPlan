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
    
    fileprivate func getPickerLabel() -> String {
        var label = "Meal"
        if newMeal != "" {
            label = newMeal
        }
        return label
    }
    
    @ViewBuilder func menuContents() -> some View {
            Button("Breakfast") { self.newMeal = "Breakfast" }
            Button("Lunch") { self.newMeal = "Lunch" }
            Button("Snack") { self.newMeal = "Snack" }
            Button("Dinner") { self.newMeal = "Dinner" }
    }
    
    @ViewBuilder func menuLabel() -> some View {
        HStack {
            Text(getPickerLabel())
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Weekly Menu")
                .font(.largeTitle)
                .accessibility(label: Text("Weekly Menu"))
                .padding()
            
            List {
                MenuRowView(food: "Food", meal: "Meal of Day")
                    .font(.title2)
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
                            .frame(width: 250)
                        
                        Menu(content: menuContents, label: menuLabel)
                            .frame(width: 250)
                        
                        Button(action: {
                            menuViewModel.addMealToMenu(food: newFood, mealOfDay: newMeal)
                            resetFood()
                        }) {
                            Image(systemName: "checkmark")
                        }
                    }
                    
                }
                
            }.padding(.horizontal)
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(menuViewModel: MenuViewModel())
    }
}
