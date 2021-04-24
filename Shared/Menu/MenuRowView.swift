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
        HStack {
            Text(food)
                .padding(.horizontal)
                .accessibility(identifier: "\(food)")
            Spacer()
            Text(meal)
                .padding(.horizontal)
            Spacer()
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(food: "Something", meal: "Breakfast")
    }
}
