//
//  HomeDoctorItem.swift
//  TelemedicineConceptApp
//
//  Created by Raphael Cerqueira on 30/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct HomeDoctorCardView: View {
    var item: HomeDoctorItem
    @Binding var showDetails: Bool
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.showDetails.toggle()
            }
        }) {
            VStack {
                ZStack(alignment: .bottomTrailing) {
                    Image(item.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 90, height: 90)
                        .clipShape(Circle())
                    
                    Image(systemName: "video.fill")
                        .font(.system(size: 12))
                        .foregroundColor(Color(#colorLiteral(red: 0.3448348641, green: 0.8466498256, blue: 0.4810677171, alpha: 1)))
                        .frame(width: 30, height: 30)
                        .background(Circle().fill(Color.white))
                }
                
                HStack {
                    VStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(Color("Primary"))
                            
                            Text(item.field)
                                .fontWeight(.medium)
                                .foregroundColor(Color("Accent"))
                                .padding(.top, 6)
                            
                            Text("Availability")
                                .fontWeight(.bold)
                                .foregroundColor(Color(#colorLiteral(red: 0.5852302909, green: 0.5834167004, blue: 0.6314681172, alpha: 1)))
                                .padding(.top)
                            
//                            Text(item.availability)
//                                .fontWeight(.medium)
//                                .foregroundColor(Color(#colorLiteral(red: 0.5852302909, green: 0.5834167004, blue: 0.6314681172, alpha: 1)))
//                                .padding(.top, 6)
                        }
                        .padding(.top)
                    }
                    
                    Spacer()
                }
            }
        }
        .buttonStyle(PlainButtonStyle())
        .padding(.leading)
        .padding(.vertical, 32)
        .frame(width: 220)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 0))
    }
}

struct HomeDoctorCardView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDoctorCardView(item: homeDoctorItems[0], showDetails: .constant(false))
    }
}
