//
//  Countries Detail View.swift
//  covid data app
//
//  Created by azin on 2/22/23.
//

import SwiftUI

struct CountriesDetailView: View {
    
    let  countriesDetailItem: CountriesDetail
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Text(countriesDetailItem.name.official)
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                
                Text("population: \(countriesDetailItem.population.description)")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                
                Text("capital: \(countriesDetailItem.capital.description)")
            }
            Spacer()
        }
        .padding()
        .navigationTitle(countriesDetailItem.name.official)
    }
    
}


