//
//  HomeFieldsView.swift
//  TelemedicineConceptApp
//
//  Created by Raphael Cerqueira on 30/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct HomeFieldsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 22) {
                ForEach(homeFieldItems) { item in
                    HomeCardView(item: item)
                }
            }
            .padding()
        }
        .padding(.top)
    }
}

struct HomeFieldsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFieldsView()
    }
}
