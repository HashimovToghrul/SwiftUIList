//
//  ContentView.swift
//  SwiftUIList
//
//  Created by Togrul Hashimov on 01.02.26.
//

import SwiftUI

struct ContentView: View {

    let restaurants = [
        Restaurant(restaurantName: "Urfa", restaurantImage: "res1"),
        Restaurant(restaurantName: "Ankara", restaurantImage: "res2"),
        Restaurant(restaurantName: "Baki", restaurantImage: "res3"),
        Restaurant(restaurantName: "Qedim Qebele", restaurantImage: "res4")
    ]
    
    var body: some View {
        List {
            ForEach(restaurants) { list in
                HStack {
                    Image(list.restaurantImage)
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text(list.restaurantName)
                        .font(.system(size: 20, weight: .bold))
                }
                
            }
        }
        .listStyle(.sidebar)
    }
}

#Preview {
    ContentView()
}
