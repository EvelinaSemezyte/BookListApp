//
//  BookDetailView.swift
//  M4Chalange
//
//  Created by Evelina Semezyte on 2022-02-10.
//

import SwiftUI

struct BookDetailView: View {
    
    @EnvironmentObject var model: BookModel
    @State var rating = 3
    var book: Book
    
    var body: some View {
        VStack{
            VStack(spacing: 12){
                Text("Read Now!")
                    .font(.title)
                
                // MARK: - Link to book content
                NavigationLink {
                    BookContentView(book: book)
                } label: {
                    Image("cover\(book.id)")
                        .resizable()
                        .clipped()
                        .frame(width: 300, height: 400, alignment: .center)
                }
                
                VStack(spacing: 12) {
                    Text("Mark for later!")
                        .fontWeight(.semibold)
                        .bold()
                        .font(.title3)
                    
                    // MARK: -  Book Favorite update
                    Button(action: {
                        model.updateIsFavorite(bookId: book.id)
                    }, label: {
                        Image(systemName: book.isFavourite ? "star.fill": "star")
                            .font(.title)
                            .accentColor(.yellow)
                    })
                }
                Text("Rate Text and More")
                    .font(.title3)
                    .bold()
                
                // MARK: - Book rating update
                Picker("Select Your rating", selection: $rating) {
                    ForEach(1..<6) { i in
                        Text("\(i)").tag(i)
                    }
                }
                .pickerStyle(.segmented)
                .padding(.leading)
                .onChange(of: rating, perform: { value in
                    model.updateRating(bookid: book.id, rating: rating)
                })
            }
            .padding()
        }
        .navigationBarTitle("\(book.title)")
        .onAppear{ rating = book.rating }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: Book(id: 2, title: "HELLO", author: "AUTHOR", isFavourite: false, currentPage: 1, rating: 4, content: [""]))
    }
}
