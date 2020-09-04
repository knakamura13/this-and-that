//
//  GroceryItemRow.swift
//  this-and-that
//
//  Created by Kyle Nakamura on 9/3/20.
//  Copyright © 2020 Kyle Nakamura. All rights reserved.
//

import SwiftUI

struct GroceryListRow: View {
    var groceryList: GroceryList
    
    var body: some View {
        HStack {
            Text(String(groceryList.id + 1))
            Text(groceryList.name)
            Spacer()
        }
    }
}
