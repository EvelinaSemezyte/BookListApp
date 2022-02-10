//
//  M4ChalangeApp.swift
//  M4Chalange
//
//  Created by Evelina Semezyte on 2022-02-06.
//

import SwiftUI

@main
struct M4ChalangeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(BookModel())
        }
        
    }
}
