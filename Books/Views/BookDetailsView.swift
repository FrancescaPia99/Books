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
                    .cornerRadius(3.0)
                    .padding(.vertical, 20)
                Text(book.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                HStack {
                    Button(action: {
                        //action
                    }) {
                        Text(book.author)
                            .font(.system(size: 15))
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.secondary)
                            .font(.system(size: 10))
                    }
                }
                Text("Narrated by \(book.narrator)")
                    .foregroundColor(.secondary)
                    .padding(.bottom)
                    .font(.system(size: 15))
                
                
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
                        .frame(width: 350)
                        .padding(.vertical, 13)
                        .foregroundColor(.white)
                        .background(colorScheme == .dark ? Color.white.opacity(0.5): Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                }
                .padding(.bottom, 10)
                HStack {
                    Button(action: {
                        //azione che non esiste
                    }) {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                            //  .padding(.leading, 15) OPPURE
                            // aggiungere .frame(minWidth: ..., maxWidth: ...)
                            Text("WANT TO READ")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding(.vertical, 13)
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                            
                        }
                        .border(colorScheme == .dark ? Color.secondary: Color.black) //perché non va????
                        .cornerRadius(.infinity)
                        .overlay(RoundedRectangle(cornerRadius: 25) .stroke(lineWidth: 2))
                    }
                    
                    Button(action: {
                        //azione che non esiste
                    }){
                        HStack {
                            Image(systemName: "headphones")
                            Text("PREVIEW")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding(.vertical, 13)
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                        }
                        .border(colorScheme == .dark ? Color.white.opacity(0.5): Color.black)
                        //non va nemmeno qua!!
                        .cornerRadius(.infinity)
                        .overlay(RoundedRectangle(cornerRadius: 25) .stroke(lineWidth: 2))
                    }
                }
                
                //   .padding(.horizontal, 15)
            }
        }
        .padding()
    }
}

#Preview {
    BookDetailsView(book: Book(cover: "1q84", title: "1Q84", author: "Haruki Murakami", narrator: "Well Or George"))
}

/*
 - cambiare font
 - meno cecati (in progress)
 - X che rimane statica
 - sistemare i bottoni wtr e preview
 - aggiungere altre cose alla detail scrollview
 - aggiungere "see all" all'audiobooks
 - voiceover
 
 */
