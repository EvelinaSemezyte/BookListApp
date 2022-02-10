//
//  Book.swift
//  M4Chalange
//
//  Created by Evelina Semezyte on 2022-02-06.
//

import Foundation


struct Book: Identifiable, Decodable {
    
    var id: Int
    var title: String
    var author: String
    var isFavourite: Bool
    var currentPage: Int
    var rating: Int
    var content: [String]
}
