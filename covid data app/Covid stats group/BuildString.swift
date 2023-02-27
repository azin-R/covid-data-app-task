//
//  BuildString.swift
//  covid data app
//
//  Created by azin on 2/25/23.
//

import Foundation


class BuildString: ObservableObject {
    
    @Published var details: CovidData
    
    var infectedStr: String {
        if let infected = details.infected {
            return "Infected: \(infected)"
        } else {
            return notAvailable + "number of infected people"
        }
    }
    
    var recoveredStr: String {
        if let recovered = details.recovered {
            return "Recovered: \(recovered)"
        } else {
            return notAvailable + "number of recovered people"
        }
    }
    
    var deceased: String {
        if let deceased = details.deceased {
            return "Deceased: \(deceased)"
        } else {
            return notAvailable + "number of deceased people"
        }
    }
    var notAvailable: String {
        "There is no data available on the "
    }
    
    init(details: CovidData) {
        self.details = details
    }
}
