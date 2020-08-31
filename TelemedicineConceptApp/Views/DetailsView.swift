//
//  DetailsView.swift
//  TelemedicineConceptApp
//
//  Created by Raphael Cerqueira on 30/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Image("avatar1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Dr. Andrea Stone")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(Color("Primary"))
                        
                        Text("Pediatrician")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(Color("Accent"))
                        
                        HStack {
                            Image(systemName: "phone.fill")
                                .foregroundColor(Color(#colorLiteral(red: 0.2950503826, green: 0.4968680739, blue: 0.9849467874, alpha: 1)))
                                .frame(width: 50, height: 50)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(#colorLiteral(red: 0.2950503826, green: 0.4968680739, blue: 0.9849467874, alpha: 1))).opacity(0.3))
                            
                            Image(systemName: "bubble.left.fill")
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.6927176118, blue: 0.4024251699, alpha: 1)))
                                .frame(width: 50, height: 50)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(#colorLiteral(red: 1, green: 0.6927176118, blue: 0.4024251699, alpha: 1))).opacity(0.3))
                            
                            Image(systemName: "video.fill")
                                .foregroundColor(Color(#colorLiteral(red: 0.3448348641, green: 0.8466498256, blue: 0.4810677171, alpha: 1)))
                                .frame(width: 50, height: 50)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(#colorLiteral(red: 0.3448348641, green: 0.8466498256, blue: 0.4810677171, alpha: 1))).opacity(0.3))
                        }
                        .font(.system(size: 24))
                    }
                    .padding(.leading)
                    
                    Spacer()
                }
                
                Text("About Doctor")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(Color("Primary"))
                
                Text("Graduated in 2010 from the Faculty of Medicine of\nSanto Amaro at UNISA, working in the clinic since 2011.\nand at the Health Secretariat since 2012.")
                    .font(.system(size: 14))
                    .fontWeight(.medium)
                    .padding(.top)
                    .foregroundColor(.gray)
            }
            .padding(30)
            
            VStack {
                HStack {
                    Text("Thurs - May 28")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(Color.white)
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "chevron.right")
                            .frame(width: 30, height: 30)
                            .background(Color.white)
                            .clipShape(Circle())
                    }
                    .padding(.leading)
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0 ..< 5) { item in
                            AvailableTimeView()
                        }
                    }
                    .padding()
                }
                
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 30)
            .background(RoundedRectangle(cornerRadius: 10).fill(Color("Accent")))
            .padding(.top, 20)
        }
        .frame(height: 450)
        .background(RoundedRectangle(cornerRadius: 20).fill(Color.white))
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}

struct AvailableTimeView: View {
    var body: some View {
        Text("17:00-17:30")
            .font(.system(size: 14, weight: .heavy))
            .padding()
            .foregroundColor(Color("Primary"))
            .background(Capsule().fill(Color.white))
    }
}
