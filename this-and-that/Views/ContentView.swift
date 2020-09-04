//
//  ContentView.swift
//

import SwiftUI

struct ContentView: View {
    let groceryLists = loadGroceryLists()
    
    var body: some View {
        List(groceryLists) { list in
            GroceryListRow(groceryList: list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
