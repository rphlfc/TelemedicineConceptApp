//
//  HomeDoctorsview.swift
//  TelemedicineConceptApp
//
//  Created by Raphael Cerqueira on 30/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct HomeDoctorsView: View {
    @Binding var showDetails: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Doctors")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(Color("Primary"))
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 22) {
                    ForEach(homeDoctorItems) { item in
                        HomeDoctorCardView(item: item, showDetails: self.$showDetails)
                    }
                }
                .padding()
            }
        }
    }
}

struct HomeDoctorsview_Previews: PreviewProvider {
    static var previews: some View {
        HomeDoctorsView(showDetails: .constant(false))
    }
}
