//
//  Covid Model.swift
//  covid data app
//
//  Created by azin on 2/22/23.
//

import Foundation

class CovidData: Decodable, Identifiable {
    let id = UUID().uuidString
    
    let infected: ItemsType?
    let recovered: ItemsType?
    let deceased: ItemsType?
    let country: String
    
    
    enum CodingKeys: String, CodingKey {
        case infected, tested, recovered, deceased, country
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.country = try container.decode(String.self, forKey: .country)
        
        
        if let value = try? container.decode(Int.self, forKey: .infected) {
            self.infected = .int(value)
        } else if let value = try? container.decode(String.self, forKey: .infected) {
            self.infected = .string(value)
        }  else if try container.decodeNil(forKey: CodingKeys.infected) {
            self.infected = .null
        }
        else {
            let context = DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unable to decode value for infected")
            throw DecodingError.typeMismatch(ItemsType.self, context)
        }
        
        
        if let value = try? container.decode(Int.self, forKey: .recovered) {
            self.recovered = .int(value)
        } else if let value = try? container.decode(String.self, forKey: .recovered) {
            self.recovered = .string(value)
        } else if try container.decodeNil(forKey: CodingKeys.recovered) {
            self.recovered = .null
        } else {
            let context = DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unable to decode value for recovered")
            throw DecodingError.typeMismatch(ItemsType.self, context)
        }
        
        
        if let value = try? container.decode(Int.self, forKey: .deceased) {
            self.deceased = .int(value)
        } else if let value = try? container.decode(String.self, forKey: .deceased) {
            self.deceased = .string(value)
        } else if try container.decodeNil(forKey: CodingKeys.deceased) {
            self.deceased = .null
        } else {
            let context = DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unable to decode value for deceased")
            throw DecodingError.typeMismatch(ItemsType.self, context)
        }
    }
}

enum ItemsType: Decodable {
    case int(Int)
    case string(String)
    case null
}
