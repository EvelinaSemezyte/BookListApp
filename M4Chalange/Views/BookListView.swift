//
//  BookListView.swift
//  M4Chalange
//
//  Created by Evelina Semezyte on 2022-02-06.
//

import SwiftUI

struct BookListView: View {
    
    @EnvironmentObject var model: BookModel
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    Text("My Library")
                        .font(.title)
                        .bold()
                    
                        ForEach(model.books) { book in
                            NavigationLink {
                                BookDetailView(book: book)
                            } label: {
                                BookCard(book: book)
                                    .foregroundColor(.black)
                            }
                        } 
                }.padding()
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
            .environmentObject(BookModel())
    }
}
