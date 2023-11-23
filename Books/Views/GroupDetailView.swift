//
//  GroupDetailView.swift
//  Books
//
//  Created by Francesca Pia De Rosa on 17/11/23.
//

import SwiftUI

struct GroupDetailView: View {
    
    @State private var selectedBook: Book?
    
    var viewModel = BooksModel()
    var category: String
    
    var body: some View {
        NavigationStack {
            Divider()
                .frame(width: 360)
                .padding(.bottom, 35)
            
            ScrollView {
                VStack (alignment: .leading) {
                    Text ("New Releases")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .accessibilityLabel("New releases. Heading")
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: [GridItem(.flexible())], spacing: 5) {
                        ForEach(BooksModel.books3) { book in
                            Button(action: {
                                selectedBook = book
                            }) {
                                Image(book.cover)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 150)
                                    .cornerRadius(3.0)
                                    .padding(.leading, 15)
                                    .accessibilityLabel("Cover of \(book.title)")
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .frame(maxHeight: 160)
                }
                VStack {
                    Divider()
                    
                    Button(action: {
                        //azione che non esiste
                    }) {
                        HStack {
                            Text("See All")
                                .font(.system(size: 15))
                                .accessibilityHint("Double tap to open all audiobooks.")
                            Image(systemName: "chevron.forward")
                                .foregroundColor(.secondary)
                                .font(.system(size: 10))
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 5)
                        .padding(.bottom, 20)
                    }
                }
                .frame(width: 360)
                .padding(.top, 10)
                .padding(.bottom, 35)
                
                VStack (alignment: .leading) {
                    Text ("Bestsellers")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .accessibilityLabel("Bestsellers. Heading")
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: [GridItem(.flexible())], spacing: 5) {
                        ForEach(BooksModel.books2) { book in
                            Button(action: {
                                selectedBook = book
                            }) {
                                Image(book.cover)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 150)
                                    .cornerRadius(3.0)
                                    .padding(.leading, 15)
                                    .accessibilityLabel("Cover of \(book.title)")
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .frame(maxHeight: 160)
                }
                VStack {
                    Divider()
                    
                    Button(action: {
                        //azione che non esiste
                    }) {
                        HStack {
                            Text("See All")
                                .font(.system(size: 15))
                                .accessibilityHint("Double tap to open all audiobooks.")
                            Image(systemName: "chevron.forward")
                                .foregroundColor(.secondary)
                                .font(.system(size: 10))
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 5)
                        .padding(.bottom, 20)
                    }
                }
                .frame(width: 360)
                .padding(.top, 10)
                .navigationTitle(category)
            }
        }
        .sheet(item: $selectedBook) { selectedBook in
            BookDetailsView(book: selectedBook)
        }
    }
}

struct GroupDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GroupDetailView(category: "Comedy")
        }
    }
}
