//
//  HomeCardView.swift
//  TelemedicineConceptApp
//
//  Created by Raphael Cerqueira on 30/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct HomeCardView: View {
    var item: HomeFieldItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Image(systemName: item.imageName)
                    .font(.system(size: 26))
                    .frame(width: 50, height: 50)
                    .foregroundColor(item.color)
                    .background(item.color.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                
                Text(item.title)
                    .font(.system(size: 20))
                    .foregroundColor(Color("Primary"))
                    .fontWeight(.bold)
                    .padding(.top, 12)
                
                Text("\(item.doctors) Doctors")
                    .font(.system(size: 16))
                    .foregroundColor(Color.gray)
                    .fontWeight(.medium)
                    .padding(.top)
            }
            .padding(.leading)
            .padding(.vertical, 32)
            
            Spacer()
        }
        .frame(width: 170)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 0))
    }
}

struct HomeCardView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCardView(item: homeFieldItems[0])
    }
}
