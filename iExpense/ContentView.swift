//
//  ContentView.swift
//  iExpense
//
//  Created by Matthew Dolan on 2023-01-06.
//

import SwiftUI

struct ContentView: View {
    // 1. UserDefaults way to store small amount of data
//    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    
    // 2. AppStorage works similar to UserDefaults and you can use them together, but AppStorage cannot hold complex data like from structs.
    @AppStorage("tapCount") private var tapCount = 0
    
    var body: some View {
        Button("Tap count: \(tapCount)") {
            tapCount += 1
            // 1. UserDefaults way to store small amount of data
//            UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
