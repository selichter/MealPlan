//
//  MealPlanApp.swift
//  Shared
//
//  Created by Sarah Lichter on 4/20/21.
//

import SwiftUI

@main
struct MealPlanApp: App {
    var body: some Scene {
        WindowGroup {
            Sidebar()
                .background(Color.white)
                .colorScheme(.light)
        }
    }
}
