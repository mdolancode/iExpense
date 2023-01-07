//
//  ContentView.swift
//  iExpense
//
//  Created by Matthew Dolan on 2023-01-06.
//

import SwiftUI

struct User: Codable {
    let firstName: String
    let lastName: String
}

struct ContentView: View {
    
    @State private var user = User(firstName: "Matt", lastName: "Dolan")
    
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
