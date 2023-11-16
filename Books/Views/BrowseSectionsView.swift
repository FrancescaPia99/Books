//
//  BrowseSectionsView.swift
//  Books
//
//  Created by Francesca Pia De Rosa on 16/11/23.
//

import SwiftUI

struct BrowseSectionsView: View {
    
    var viewModel = ListModel()
    
    var body: some View {
        NavigationStack {
            Divider()
            VStack {
                HStack{
                    Image(systemName: "flame.fill")
                    Text("New & Trending")
                    Spacer()
                    Image(systemName: "chevron.forward")
                    Divider()
                }
                Divider()
                
            }
            .navigationTitle("Browse Sections")
        }
    }
}
#Preview {
    BrowseSectionsView()
}
