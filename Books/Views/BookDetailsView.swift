//
//  BookDetailsView.swift
//  Books
//
//  Created by Francesca Pia De Rosa on 17/11/23.
//

import SwiftUI

struct BookDetailsView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.presentationMode) var presentationMode
    
    var book: Book
    
    var body: some View {

            HStack {
                Button(action: {
                    dismiss()
                }) {
                    Text("Questo è il bottone per chiudere il modale \n costumizzalo come vuoi")
                        .foregroundColor(.blue)
                }
            }
    }
}

#Preview {
    BookDetailsView(book: Book(cover: "1q84", title: "1Q84", author: "Haruki Murakami"))
}
