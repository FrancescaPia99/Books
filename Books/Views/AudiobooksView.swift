//
//  BookStoreView.swift
//  Books
//
//  Created by Francesca Pia De Rosa on 16/11/23.
//

import SwiftUI

struct AudiobooksView: View {
    
    @State private var isBookDetailPresented = false
    @State private var selectedBook: Book?
    
    var viewModel = BooksModel()
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack {
                    Divider()
                        .frame(width: 360)
                    
                    NavigationLink(destination: BrowseSectionsView()) {
                        HStack {
                            Image(systemName: "text.justify.left")
                            Text("Browse Sections")
                            Spacer()
                            Image(systemName: "chevron.forward")
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                    
                    Divider()
                        .frame(width: 360)
                }
                
                VStack (alignment: .leading) {
                    Text ("New & Trending")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: [GridItem(.flexible())], spacing: 5) {
                        ForEach(viewModel.books1) { book in
                            Button(action: {
                                selectedBook = book
                                isBookDetailPresented = true
                            }) {
                                Image(book.cover)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 100)
                                    .padding(.leading, 15)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .frame(maxHeight: 110)
                }
                .padding()
                
                VStack (alignment: .leading) {
                    Text ("Coming soon")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Text ("Pre-order your audiobooks and get\nthem on their release day.")
                        .font(.subheadline)
                        .padding(.bottom)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: [GridItem(.flexible())], spacing: 5) {
                        ForEach(viewModel.books3) { book in
                            Button(action: {
                                selectedBook = book
                                isBookDetailPresented = true
                            }) {
                                Image(book.cover)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 100)
                                    .padding(.leading, 15)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .frame(maxHeight: 110)
                }
                .padding()
                
                VStack (alignment: .leading) {
                    Text ("Popular Audiobooks")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: [GridItem(.flexible())], spacing: 5) {
                        ForEach(viewModel.books2) { book in
                            Button(action: {
                                selectedBook = book
                                isBookDetailPresented = true
                            }) {
                                Image(book.cover)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 100)
                                    .padding(.leading, 15)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .frame(maxHeight: 110)
                }
                
                .padding()
                .navigationTitle("Audiobooks")
                
            }
        }
        .sheet(isPresented: $isBookDetailPresented) {
            if let selectedBook = selectedBook {
                BookDetailsView(book: selectedBook)
            }
        }
    }
}

struct AudiobooksView_Previews: PreviewProvider {
    static var previews: some View {
        AudiobooksView()
    }
}
