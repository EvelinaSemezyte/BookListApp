//
//  BookModel.swift
//  M4Chalange
//
//  Created by Evelina Semezyte on 2022-02-06.
//

import Foundation

class BookModel: ObservableObject {
    @Published var books = [Book]()
    
    init() {
        self.books = DataService.getLocalData()
    }
    
    // MARK: Update book page
    func updatePage(bookId: Int, page: Int) {
        if let index = books.firstIndex(where: {$0.id == bookId}) {
            books[index].currentPage = page
        }
    }
    
    // MARK: Update book Rating
    func updateRating(bookid: Int, rating: Int) {
        if let index = books.firstIndex(where: {$0.id == bookid}){
            books[index].rating = rating
        }
    }
    
    // MARK: Update book favorite status
    func updateIsFavorite(bookId: Int) {
        if let index = books.firstIndex(where: {$0.id == bookId}){
            books[index].isFavourite.toggle()
        }
    }
}
