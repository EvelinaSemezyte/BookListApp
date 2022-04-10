//
//  BookCard.swift
//  M4Chalange
//
//  Created by Evelina Semezyte on 2022-02-06.
//

import SwiftUI

struct BookCard: View {
    var book: Book
    
    var body: some View {
        ZStack() {
            Rectangle()
                .foregroundColor(.white)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(book.title)
                        .font(.title)
                        .bold()
                    Spacer()
                    
                    if book.isFavourite {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.title)
                    }
                }
                Text(book.author)
                    .font(.subheadline)
                Image("cover\(book.id)")
                    .resizable()
                    .clipped()
                
            }.padding()
        }
        .frame(width: 350, height: 600, alignment: .center)
        .cornerRadius(15)
        .padding()
        .shadow(color: .gray, radius: 10, x: 0, y: 0)
    }
}

struct BookCard_Previews: PreviewProvider {
    static var previews: some View {
        BookCard(book: Book(id: 1, title: "Title", author: "Author", isFavourite: true, currentPage: 1, rating: 2, content: [""]))
    }
}
