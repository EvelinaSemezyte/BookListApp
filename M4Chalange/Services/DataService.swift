//
//  DataService.swift
//  M4Chalange
//
//  Created by Evelina Semezyte on 2022-02-10.
//

import Foundation

class DataService {
    
    // Parse the local json file
    static func getLocalData() -> [Book] {
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        // Check if pathString isn't nil, otherwise...
        guard pathString != nil else {
            return [Book]()
        }
        
        // Create the url object
        let url = URL(fileURLWithPath: pathString!)
        
        // Error handling
        do {
            
            // Create the data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                // Return the recipes
                let bookData = try decoder.decode([Book].self, from: data)
                
                return bookData
                
            }
            catch {
                // Error with parsing JSON
                print(error)
            }
        }
        catch {
            // Error with getting data
            print(error)
        }
        return [Book]()
    }
}
