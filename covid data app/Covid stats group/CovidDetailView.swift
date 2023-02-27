//
//  Covid Detail View.swift
//  covid data app
//
//  Created by azin on 2/22/23.
//

import SwiftUI

struct CovidDetailView: View {
    @ObservedObject var vm: BuildString
    let covidItem: CovidData
    
    var body: some View {
        
        VStack(alignment: .leading) {
            VStack {
                Text("\(vm.infectedStr)")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                
                Text("\(vm.recoveredStr)")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                
                Text("\(vm.deceased)")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
            }
            Spacer()
        }
        .padding()
        .navigationTitle(covidItem.country)
    }
}

