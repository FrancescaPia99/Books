//
//  Book.swift
//  Books
//
//  Created by Francesca Pia De Rosa on 16/11/23.
//

import Foundation

struct Book: Identifiable {
    var id = UUID()
    var cover: String
    var title: String
    var author: String
}
