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
                HStack {
                    Spacer()
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.secondary)
                            .font(.system(size: 20))
                    }
                    
                }
            
            VStack {
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
                
                
                HStack {
                    VStack(alignment: .leading) {
                        HStack (spacing: 3) {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                            Spacer()
                            HStack (spacing: 15) {
                                Button(action: {
                                    //action
                                }) { Image(systemName: "app.gift.fill")
                                }
                                Button(action: {
                                    //action
                                }) { Image(systemName: "ellipsis.circle.fill")
                                }
                            }
                            .font(.system(size: 27))
                        }
                        .font(.system(size: 13))
                        
                        Text("253 ratings")
                            .foregroundColor(.secondary)
                            .font(.system(size: 10))
                    }
                }
                
                Button(action: {
                    //action che non esiste
                }) {
                    Text("GET")
                        .bold()
                        .padding(.horizontal, 150)
                        .padding(.vertical, 15)
                        .foregroundColor(.white)
                        .background(colorScheme == .dark ? Color.white.opacity(0.5): Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                }
                
                HStack {
                    Button(action: {
                        //azione che non esiste
                    }) {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                            Text("WANT TO READ")
                                .padding(.vertical, 15)
                            
                            
                        }
                      //  Spacer()
                        HStack {
                            Image(systemName: "headphones")
                            Text("PREVIEW")
                                .padding(.vertical, 15)
                            
                            
                        }
                    }
              //      .padding(.horizontal, 20)
                }
            }
                    }
            .padding()
    }
}

#Preview {
    BookDetailsView(book: Book(cover: "1q84", title: "1Q84", author: "Haruki Murakami", narrator: "Well Or George"))
}

/*
- sistemare class -> struct
- meno cecati
- X che rimane statica
- sistemare i bottoni wtr e preview
- aggiungere altre cose alla detail scrollview
- aggiungere "see all"
    
*/
