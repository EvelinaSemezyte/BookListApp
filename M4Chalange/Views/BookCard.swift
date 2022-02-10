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
                Text(book.title)
                    .font(.title)
                    .bold()
                Text(book.author)
                    .font(.subheadline)
                Image("cover\(book.id)")
                    .resizable()
                    .clipped()
            }
            .padding()
        }
        .frame(width: 350, height: 600, alignment: .center)
        .cornerRadius(10)
        .padding()
        .shadow(color: .gray, radius: 10, x: 0, y: 0)
    }
}

struct BookCard_Previews: PreviewProvider {
    static var previews: some View {
        BookCard(book: Book(id: 1, title: "Title", author: "Author", isFavourite: false, currentPage: 1, rating: 2, content: ["asxVCGHJdckghsvCGjsbcjsdCHKGHCSKVHGCSJ","asxVCGHJdckghsvCGjsbcjsdCHKGHCSKVHGCSJ"]))
    }
}
