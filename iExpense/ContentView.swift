//
//  ContentView.swift
//  iExpense
//
//  Created by Matthew Dolan on 2023-01-06.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct ContentView: View {
    // Use @StateObject when you are making the object for the first time.
    // When you want to make a class instance elsewhere then use @ObservedObject (when reading it or modifying it, but not creating a new object).
    @StateObject private var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
