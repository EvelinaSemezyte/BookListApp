//
//  ContentView.swift
//  M4Chalange
//
//  Created by Evelina Semezyte on 2022-02-06.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: BookModel
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                Text("My Library")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                VStack {
                    ForEach(model.books) { book in
                        BookCard(book: book)
                    }
                    
                   
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(BookModel())
    }
}
