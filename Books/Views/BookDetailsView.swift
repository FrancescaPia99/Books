//
//  BookDetailsView.swift
//  Books
//
//  Created by Francesca Pia De Rosa on 17/11/23.
//

import SwiftUI

struct BookDetailsView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.presentationMode) var presentationMode
    
    var book: Book
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "xmark")
                            .symbolVariant(.circle.fill)
                            .foregroundColor(.gray)
                            .font(.system(size: 20, design: .rounded))
                            .padding(.top)
                        
                    }
                    .padding(.leading, 340.0)
                }
                Image(book.cover)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, alignment: .center)
                    .padding(.vertical, 20)
                Text(book.title)
                    .font(.title2)
                    .fontWeight(.bold)
                HStack {
                    Button(action: {
                        //action
                    }) {
                        Text(book.author)
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.secondary)
                            .font(.footnote)
                    }
                }
                Text("Narrated by \(book.narrator)")
                    .foregroundColor(.secondary)
                    .padding(.bottom)
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.leadinghalf.filled")
                        Spacer()
                        HStack {
                            Button(action: {
                                //action
                            }) { Image(systemName: "app.gift.fill")
                        }
                        Button(action: {
                            //action
                        }) { Image(systemName: "ellipsis.circle.fill")
                    }
                        }
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    
                    Text("253 ratings")
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal, 30)
                .font(.caption)
                
                VStack {
                    Button(action: {
                        //action che non esiste
                    }) {
                        Text("GET")
                            .bold()
                            .padding(.horizontal, 150)
                            .padding(.vertical, 15)
                            .foregroundColor(.white)
                            .background(Color.gray) //light mode: black, dark mode: gray
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                    }
                    
                }
            }
            .padding(.bottom)
        }
    }
}

#Preview {
    BookDetailsView(book: Book(cover: "1q84", title: "1Q84", author: "Haruki Murakami", narrator: "Well Or George"))
}

/*
    HStack {
        Button(action: {
            //action che non esiste
        }) {
            //Image(systemName: "x.circle.fill")
            Text("WANT TO READ")
                .bold()
            padding(.vertical, 15)
 }
            
            Button(action: {
                //action che non esiste
            }) {
                //Image(systemName: "headphones")
                Text("PREVIEW")
                    .bold()
                padding(.vertical, 15)
            }
        }
    }
    
}*/
