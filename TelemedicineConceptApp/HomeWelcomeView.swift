//
//  HomeWelcomeView.swift
//  TelemedicineConceptApp
//
//  Created by Raphael Cerqueira on 30/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct HomeWelcomeView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Hello,")
                    .font(.system(size: 32))
                    .foregroundColor(Color("Primary"))
                
                Text("Elisabeth")
                    .font(.system(size: 40))
                    .bold()
                    .foregroundColor(Color("Primary"))
            }
            
            Spacer()
            
            ZStack(alignment: .topTrailing) {
                Image("avatar1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                
                Text("2")
                    .font(.system(size: 13))
                    .foregroundColor(Color.white)
                    .frame(width: 20, height: 20)
                    .background(Color("Accent"))
                    .clipShape(Circle())
                    .overlay(Circle().strokeBorder(Color("Background"), lineWidth: 2))
                    .offset(x: -5)
            }
        }
    }
}

struct HomeWelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeWelcomeView()
    }
}
