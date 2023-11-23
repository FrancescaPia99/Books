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
        .padding(/*@START_MENU_TOKEN@*/[.top, .trailing]/*@END_MENU_TOKEN@*/)
        
        ScrollView(showsIndicators: false) {
            VStack {
                Image(book.cover)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, alignment: .center)
                    .cornerRadius(3.0)
                    .accessibilityLabel("Cover of \(book.title)")
                Text(book.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .accessibilityLabel("\(book.title). Heading")
            
                HStack {
                    Button(action: {
                        //action
                    }) {
                        Text(book.author)
                            .font(.system(size: 15))
                            .accessibilityLabel("\(book.author)")
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.secondary)
                            .font(.system(size: 10))
                    } .accessibilityHint("Double tap to see all the author's works")
                }
                Text("Narrated by \(book.narrator)")
                    .foregroundColor(.secondary)
                    .padding(.bottom)
                    .font(.system(size: 15))
                
                
                HStack {
                    VStack {
                        HStack {
                            VStack (alignment: .leading) {
                                HStack (spacing: 3) {
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.leadinghalf.filled")
                                }
                                Text("253 ratings")
                                    .foregroundColor(.secondary)
                                    .font(.system(size: 10))
                                    .accessibilityLabel("253 ratings")
                            }
                         .accessibilityElement(children: .combine)
                        .accessibilityLabel("Four and a half stars. Based on 253 ratings.")
                            
                            Spacer()
                            
                            HStack (spacing: 15) {
                                Button(action: {
                                    //action
                                }) { Image(systemName: "app.gift.fill")
                                }
                                .accessibilityHint("Double tap to gift the audiobook to someone else.")
                                Button(action: {
                                    //action
                                }) { Image(systemName: "ellipsis.circle.fill")
                                } .accessibilityHint("Double tap to explore other actions.")
                            }
                            .font(.system(size: 27))
                        }
                        .font(.system(size: 13))
                    }
                    
                }
                
                Button(action: {
                    //action che non esiste
                }) {
                    Text("GET")
                        .bold()
                        .frame(width: 350)
                        .padding(.vertical, 12)
                        .foregroundColor(.white)
                        .background(colorScheme == .dark ? Color.white.opacity(0.5): Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .accessibilityHint("Double tap to download the audiobooks")
                }
                .padding(.vertical, 10)
                
                HStack {
                    Button(action: {
                        //azione che non esiste
                    }) {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                            Text("WANT TO READ")
                                .fontWeight(.bold)
                                .padding(.vertical, 12)
                                .accessibilityHint("Double tap to add to Want to read list")
                        }
                        .frame(minWidth: 190)
                        .overlay(RoundedRectangle(cornerRadius: 25) .stroke((colorScheme == .dark ? Color.white.opacity(0.5): Color.black)))
                    }
                    
                    Button(action: {
                        //azione che non esiste
                    }){
                        HStack {
                            Image(systemName: "headphones")
                            Text("PREVIEW")
                                .fontWeight(.bold)
                                .padding(.vertical, 12)
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                                .accessibilityHint("Double tap to listen a preview of the audiobook")
                        }
                        .frame(minWidth: 150)
                        .overlay(RoundedRectangle(cornerRadius: 25) .stroke((colorScheme == .dark ? Color.white.opacity(0.5): Color.black)))
                    }
                } .font(.system(size: 14))
                
                
                Divider()
                    .padding(20)
                //   .padding(.horizontal, 15)
                
                Text("Publisher description")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 5)
                    .accessibilityLabel("Publisher description. Heading")
                Text("Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit animid est laborum.")
                    .font(.system(size: 16))
                    .lineLimit(5)
                
                Divider()
                    .padding(5)
            }
        }
        .padding()
    }
}

#Preview {
    BookDetailsView(book: Book(cover: "1q84", title: "1Q84", author: "Haruki Murakami", narrator: "Well Or George"))
}
