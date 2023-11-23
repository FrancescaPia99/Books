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
                    List {
                        ForEach(viewModel.categories.prefix(2)) { category in
                            NavigationLink(destination: GroupDetailView(category: category.category)) {
                                HStack {
                                    Image(systemName: category.icon)
                                        .frame(width: 40, height: 20)
                                    Text(category.category)
                                }
                                
                            }
                        }
                        
                        Text("Genres")
                            .foregroundColor(.secondary)
                        
                        ForEach(viewModel.categories.dropFirst(2)) { category in
                            NavigationLink(destination: GroupDetailView(category:category.category)) {
                                HStack{
                                    Image(systemName: category.icon)
                                        .frame(width: 40, height: 20)
                                    Text(category.category)
                                }
                                
                            }
                            
                        }
                    }
                    .navigationTitle("Browse Sections")
             //       .listStyle(InsetListStyle())
                }
}
#Preview {
    BrowseSectionsView()
}
