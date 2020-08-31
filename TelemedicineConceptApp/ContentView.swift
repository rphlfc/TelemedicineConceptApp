//
//  ContentView.swift
//  TelemedicineConceptApp
//
//  Created by Raphael Cerqueira on 30/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showDetails = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    VStack {
                        HomeWelcomeView()
                        
                        HomeSearchView()
                    }
                    .padding()
                    
                    HomeFieldsView()
                    
                    HomeDoctorsView(showDetails: self.$showDetails)
                        .padding(.top)
                    
                    Spacer()
                        .frame(height: 40)
                }
            }
            
            MenuView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
