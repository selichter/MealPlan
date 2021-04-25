//
//  MenuRowView.swift
//  MealPlan
//
//  Created by Sarah Lichter on 4/24/21.
//

import SwiftUI

struct MenuRowView: View {
    var food: String
    var meal: String
    
    var body: some View {
        let columns = [
            GridItem(.fixed(250.00), spacing: 10),
            GridItem(.fixed(250.00), spacing: 10)
        ]
        LazyVGrid(columns: columns, alignment: .leading) {
            Text(food)
                .accessibility(identifier: "\(food)")
            Text(meal)
                .accessibility(identifier: "\(meal)")
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(food: "Something", meal: "Breakfast")
    }
}
