//
//  BookContentView.swift
//  M4Chalange
//
//  Created by Evelina Semezyte on 2022-02-10.
//

import SwiftUI

struct BookContentView: View {
    
    @EnvironmentObject var model: BookModel
    @State private var page = 0
    var book: Book
    
    var body: some View {
        TabView(selection: $page) {
            ForEach(book.content.indices) { index in
                VStack(alignment: .center) {
                    Text(book.content[index])
                        .tag(index)
                    Spacer()
                    
                    Text("\(page + 1)")
                }
            }
            .padding()
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                page = book.currentPage
            }
        })
        .onDisappear(perform: {
            model.updatePage(bookId: book.id, page: page)
        })
    }
}

struct BookContentView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        BookContentView(book: model.books[1])
    }
}
