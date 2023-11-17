//
//  GroupDetailView.swift
//  Books
//
//  Created by Francesca Pia De Rosa on 17/11/23.
//

import SwiftUI

struct GroupDetailView: View {
    
    var category: String
    
    var body: some View {
        NavigationStack {
            Text("Hello")
            
            .navigationTitle(category)
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
