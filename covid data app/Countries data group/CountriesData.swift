//
//  Countries Data.swift
//  covid data app
//
//  Created by azin on 2/22/23.
//

import SwiftUI

struct CountriesData: View {
    @State var countriesInfo: [CountriesDetail] = []
    
    var body: some View {
        NavigationView {
            List(countriesInfo) { contries in
                NavigationLink(destination: CountriesDetailView(countriesDetailItem: contries)) {
                    HStack {
                        Text(contries.name.common)
                            .font(.headline)
                    }.padding(7)
                }
                
            }
            .navigationTitle("Countries")
            .onAppear() {
                CountriesApiCall().getApiData { (countriesInfo) in
                    self.countriesInfo = countriesInfo
                }
            }
        }
    }
}

struct CountriesDataPreviews: PreviewProvider {
    static var previews: some View {
        CountriesData()
    }
}
