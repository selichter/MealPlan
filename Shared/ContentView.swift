//
//  ContentView.swift
//  Shared
//
//  Created by Sarah Lichter on 4/20/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .accessibility(identifier: "Result")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
