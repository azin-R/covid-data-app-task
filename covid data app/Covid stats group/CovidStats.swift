//
//  Covid stats.swift
//  covid data app
//
//  Created by azin on 2/22/23.
//

import SwiftUI

struct CovidStats: View {
    
    @State var CovidInfo: [CovidData] = []
    
    var body: some View {
        NavigationView {
            List(CovidInfo) { covidData in
                
                NavigationLink (destination: CovidDetailView(vm: BuildString(details: covidData), covidItem: covidData)){
                    HStack{
                        Text(covidData.country)
                            .font(.headline)
                    }.padding(7)
                }
                
            }.navigationTitle("Covid_19 Data")
                .onAppear() {
                    CovidApiCall().getApiData { (covidInfo) in
                        self.CovidInfo = covidInfo
                    }
                }
        }
    }
}

struct Covid_stats_Previews: PreviewProvider {
    static var previews: some View {
        CovidStats()
    }
}
