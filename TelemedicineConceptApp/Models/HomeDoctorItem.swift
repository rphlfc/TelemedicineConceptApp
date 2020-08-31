//
//  HomeDoctorItem.swift
//  TelemedicineConceptApp
//
//  Created by Raphael Cerqueira on 30/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import Foundation

struct HomeDoctorItem: Identifiable {
    let id = UUID().uuidString
    var image: String
    var name: String
    var field: String
    var availability: String
}

let homeDoctorItems = [
    HomeDoctorItem(image: "avatar2", name: "Dr. Andrea Stone", field: "Pediatrician", availability: "Today at 09:30"),
    HomeDoctorItem(image: "avatar3", name: "Dr. Andrea Stone", field: "Psychologist", availability: "Tue, 26 May at 17:00"),
    HomeDoctorItem(image: "avatar1", name: "Dr. Andrea Stone", field: "Pediatrician", availability: "Today at 09:30")
]
