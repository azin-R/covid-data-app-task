//
//  ContentView.swift
//  covid data app
//
//  Created by azin on 2/22/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            CovidStats()
                .tabItem {
                    Image(systemName: "mail.stack.fill")
                    Text("Covid Statistics")
                }
            CountriesData()
                .tabItem {
                    Image(systemName: "globe.americas.fill")
                    Text("Countries Data")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
