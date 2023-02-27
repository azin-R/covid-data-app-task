//
//  Countries Model.swift
//  covid data app
//
//  Created by azin on 2/22/23.
//

import Foundation

struct CountriesDetail: Codable, Identifiable {
    let id = UUID()
    let name: Name
    let capital, altSpellings: [String]
    let region, subregion: String
    let languages: Languages
    let population: Int
    
}


struct CapitalInfo: Codable {
    let latlng: [Double]?
}


struct Languages: Codable {
    let eng, spa, ara, swa: String?
}


struct Name: Codable {
    let common, official: String
}
