//
//  DoctorCollectionModel.swift
//  Doctorian
//
//  Created by Paul on 13/01/2024.
//

import Foundation

struct DoctorCollectionData{
    var schedule: String
}

struct DoctorCollectionModel{
    func populateData() -> [DoctorCollectionData]{
        [
            DoctorCollectionData(schedule: "Completed Schedule"),
            DoctorCollectionData(schedule: "Upcoming Schedule"),
            DoctorCollectionData(schedule: "Canceled Schedule")
        ]
    }
    
}
