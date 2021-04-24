//
//  MenuHeaderView.swift
//  MealPlan
//
//  Created by Sarah Lichter on 4/24/21.
//

import SwiftUI

struct MenuHeaderView: View {
    var body: some View {
        HStack {
            Text("Food")
                .font(.title)
            Spacer()
            Text("Meal of Day")
                .font(.title)
            Spacer()
        }.padding(.horizontal)
    }
}

struct MenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MenuHeaderView()
    }
}
