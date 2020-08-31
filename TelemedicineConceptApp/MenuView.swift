//
//  MenuView.swift
//  TelemedicineConceptApp
//
//  Created by Raphael Cerqueira on 30/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    @State var selectedItem = 0
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                
                Button(action: {
                    self.selectedItem = 0
                }) {
                    Image(systemName: "house.fill")
                        .foregroundColor(self.selectedItem == 0 ? Color("Primary") : Color("Secondary"))
                }
                
                Spacer()
                
                Button(action: {
                    self.selectedItem = 1
                }) {
                    Image(systemName: "calendar")
                        .foregroundColor(self.selectedItem == 1 ? Color("Primary") : Color("Secondary"))
                }
                
                Spacer()
                
                Button(action: {
                    self.selectedItem = 2
                }) {
                    Image(systemName: "bubble.left.fill")
                        .foregroundColor(self.selectedItem == 2 ? Color("Primary") : Color("Secondary"))
                }
                
                Spacer()
                
                Button(action: {
                    self.selectedItem = 3
                }) {
                    Image(systemName: "gear")
                        .foregroundColor(self.selectedItem == 3 ? Color("Primary") : Color("Secondary"))
                }
                
                Spacer()
            }
            .font(.system(size: 24))
            .frame(maxWidth: .infinity)
            .frame(height: 70)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 0))
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
