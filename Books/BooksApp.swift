//
//  BooksApp.swift
//  Books
//
//  Created by Francesca Pia De Rosa on 16/11/23.
//

import SwiftUI

@main
struct BooksApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ReadNowView()
                    .tabItem {
                        Label("Read Now", systemImage: "book.fill")
                    }
                LibraryView()
                    .tabItem {
                        Label("Library", systemImage: "books.vertical.fill")
                    }
                BookStoreView()
                    .tabItem {
                        Label("Book Store", systemImage: "bag.fill")
                    }
                AudiobooksView()
                    .tabItem {
                        Label("Audiobooks", systemImage: "headphones")
                    }
                SearchView()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
            }
            
        }
    }
}
