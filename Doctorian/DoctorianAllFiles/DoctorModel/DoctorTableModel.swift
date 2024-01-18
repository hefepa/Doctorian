//
//  DoctorTableModel.swift
//  Doctorian
//
//  Created by Paul on 13/01/2024.
//

import Foundation

struct DoctorTableData{
    let docImage: String
    let docName: String
    let docSpecialization: String
    let dateImage: String
    let date: String
    let timeImage: String
    let time: String
}

struct DoctorTableModel{
    func populateData() -> [DoctorTableData]{
        [
            DoctorTableData(docImage: "docone", docName: "Small Doctor", docSpecialization: "Dentist", dateImage: "calendar", date: "Saturday, 12 June", timeImage: "clock", time: "11:00 - 12:00 AM"),
            DoctorTableData(docImage: "doctwo", docName: "Small Doctor", docSpecialization: "Dentist", dateImage: "calendar", date: "Saturday, 12 June", timeImage: "clock", time: "11:00 - 12:00 AM"),
            DoctorTableData(docImage: "docthree", docName: "Small Doctor", docSpecialization: "Dentist", dateImage: "calendar", date: "Saturday, 12 June", timeImage: "clock", time: "11:00 - 12:00 AM"),
            DoctorTableData(docImage: "docfour", docName: "Small Doctor", docSpecialization: "Dentist", dateImage: "calendar", date: "Saturday, 12 June", timeImage: "clock", time: "11:00 - 12:00 AM"),
            DoctorTableData(docImage: "docthree", docName: "Small Doctor", docSpecialization: "Dentist", dateImage: "calendar", date: "Saturday, 12 June", timeImage: "clock", time: "11:00 - 12:00 AM"),
            DoctorTableData(docImage: "docone", docName: "Small Doctor", docSpecialization: "Dentist", dateImage: "calendar", date: "Saturday, 12 June", timeImage: "clock", time: "11:00 - 12:00 AM"),
            DoctorTableData(docImage: "doctwo", docName: "Small Doctor", docSpecialization: "Dentist", dateImage: "calendar", date: "Saturday, 12 June", timeImage: "clock", time: "11:00 - 12:00 AM"),
            DoctorTableData(docImage: "docfour", docName: "Small Doctor", docSpecialization: "Dentist", dateImage: "calendar", date: "Saturday, 12 June", timeImage: "clock", time: "11:00 - 12:00 AM"),
            DoctorTableData(docImage: "doctwo", docName: "Small Doctor", docSpecialization: "Dentist", dateImage: "calendar", date: "Saturday, 12 June", timeImage: "clock", time: "11:00 - 12:00 AM"),
            DoctorTableData(docImage: "docthree", docName: "Small Doctor", docSpecialization: "Dentist", dateImage: "calendar", date: "Saturday, 12 June", timeImage: "clock", time: "11:00 - 12:00 AM"),
            DoctorTableData(docImage: "docone", docName: "Small Doctor", docSpecialization: "Dentist", dateImage: "calendar", date: "Saturday, 12 June", timeImage: "clock", time: "11:00 - 12:00 AM")
        ]
    }
}
