//
//  HomeFieldItem.swift
//  TelemedicineConceptApp
//
//  Created by Raphael Cerqueira on 30/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import Foundation
import SwiftUI

struct HomeFieldItem: Identifiable {
    let id = UUID().uuidString
    let imageName: String
    let color: Color
    let title: String
    let doctors: String
}

let homeFieldItems = [
    HomeFieldItem(imageName: "heart.fill", color: Color("Accent"), title: "Cardiology", doctors: "30"),
    HomeFieldItem(imageName: "heart.fill", color: Color(#colorLiteral(red: 0.5382164121, green: 0.856606245, blue: 0.9824795127, alpha: 1)), title: "Psychology", doctors: "24"),
    HomeFieldItem(imageName: "heart.fill", color: Color(#colorLiteral(red: 0.5366370678, green: 0.5040254593, blue: 0.4817932844, alpha: 1)), title: "Dentistry", doctors: "30"),
]
