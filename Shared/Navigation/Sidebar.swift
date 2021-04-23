//
//  Sidebar.swift
//  MealPlan (iOS)
//
//  Created by Sarah Lichter on 4/21/21.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                   destination: ContentView()
                    .background(Color.white)
                    .colorScheme(.light),
                   label: {
                       Text("Default")
                   })
                    .accessibility(identifier: "default")
                NavigationLink(
                   destination: MenuView()
                    .background(Color.white)
                    .colorScheme(.light),
                   label: {
                       Text("Menu")
                   })
                    .accessibility(identifier: "menu-link")
                
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("MealPlan")
        }
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
