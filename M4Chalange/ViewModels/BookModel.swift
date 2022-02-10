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

    
}
