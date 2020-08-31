//
//  HomeSearchView.swift
//  TelemedicineConceptApp
//
//  Created by Raphael Cerqueira on 30/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct HomeSearchView: View {
    @State var search: String = ""
    
    var body: some View {
        HStack {
            TextField("How can I help you?", text: self.$search)
                .foregroundColor(Color("Primary"))
                .padding(.leading)
            
            Button(action: {
                
            }) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 24))
                    .frame(width: 60, height: 60)
                    .foregroundColor(Color("Background"))
                    .background(Color("Accent"))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
        }
        .background(RoundedRectangle(cornerRadius: 20)
        .fill(Color.white)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5))
    }
}

struct HomeSearchView_Previews: PreviewProvider {
    static var previews: some View {
        HomeSearchView()
    }
}
