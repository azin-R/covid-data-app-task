//
//  Covid View Model.swift
//  covid data app
//
//  Created by azin on 2/22/23.
//

import Foundation

class CovidApiCall {
    func getApiData(completion: @escaping ([CovidData])-> ()) {
        guard let url = URL(string: "https://api.apify.com/v2/key-value-stores/tVaYRsPHLjNdNBu7S/records/LATEST?disableRedirect=true") else {
            print("Failed to parse url")
            return}
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let covidInfo = try! JSONDecoder().decode([CovidData].self, from: data!)
            
            DispatchQueue.main.async {
                completion(covidInfo)
            }
            
        }.resume()
        
    }
}
