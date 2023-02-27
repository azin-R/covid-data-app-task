//
//  Countries View Model.swift
//  covid data app
//
//  Created by azin on 2/22/23.
//

import Foundation

class CountriesApiCall {
    func getApiData(completion:@escaping ([CountriesDetail]) -> ()) {
        guard let url = URL(string: "https://restcountries.com/v3.1/name/united") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let countriesResponse = try! JSONDecoder().decode([CountriesDetail].self, from: data!)
            
            DispatchQueue.main.async {
                completion(countriesResponse)
            }
            
        }
        .resume()
    }

}
