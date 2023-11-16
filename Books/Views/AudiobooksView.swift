//
//  AudiobooksView.swift
//  Books
//
//  Created by Francesca Pia De Rosa on 16/11/23.
//

import SwiftUI

struct AudiobooksView: View {
    
    var viewModel = BooksModel()
    
    var body: some View {
        NavigationStack {
            
            VStack {
                Divider()
                
                NavigationLink(destination: ReadNowView()) {
                    HStack {
                        Image(systemName: "text.justify.left")
                        Text("Browse Sections")
                        Spacer()
                        Image(systemName: "chevron.forward")
                    }
                    
                } 
                Divider()
                
            }
            .padding()
            
            
            
                .navigationTitle("Audiobooks")
        }
    }
}

#Preview {
    AudiobooksView()
}
