//
//  SearchabarView.swift
//  RemindersApp
//
//  Created by Alessia Barone on 15/11/23.
//

import SwiftUI

struct SearchabarView: View {
    
    
    @State var text: String = ""
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Search", text: $text)
            
        }.padding(4)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8.0)
        Spacer()
        
        
    }
}
struct Searchbar_Previews: PreviewProvider {
    static var previews: some View {
       SearchabarView()
            .previewLayout(.sizeThatFits)
    }
}

#Preview {
    SearchabarView()
}
