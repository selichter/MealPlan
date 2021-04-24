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
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Weekly Menu")
                .font(.largeTitle)
                .accessibility(label: Text("Weekly Menu"))
                .padding()
            
            List {
                HStack {
                    Text("Food")
                        .font(.title)
                    Spacer()
                    Text("Meal of Day")
                        .font(.title)
                    Spacer()
                }.padding(.horizontal)
                
                ForEach(menuViewModel.menu) { food in
                    HStack {
                        Text(food.food)
                            .padding(.horizontal)
                            .accessibility(identifier: "\(food)")
                        Spacer()
                        Text(food.mealOfDay)
                            .padding(.horizontal)
                        Spacer()
                    }
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
                            newFood = ""
                            newMeal = ""
                            addingEntry.toggle()
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
