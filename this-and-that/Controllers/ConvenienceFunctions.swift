//
//  ConvenienceFunctions.swift
//  this-and-that
//
//  Created by Kyle Nakamura on 9/4/20.
//  Copyright © 2020 Kyle Nakamura. All rights reserved.
//

import Foundation

/**
 *  Load grocery list data from a JSON file.
 */
func loadGroceryLists() -> [GroceryList] {
    let file = "groceryListData"
    let decoder = JSONDecoder()
    
    guard let url = Bundle.main.url(forResource: file, withExtension: "json"),
        let data = try? Data(contentsOf: url),
        let groceryList = try? decoder.decode([GroceryList].self, from: data)
        else {
            print("Failed to parse \(file).json")
            return []
    }
    
    return groceryList
}
