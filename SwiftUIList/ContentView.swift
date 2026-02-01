//
//  ContentView.swift
//  SwiftUIList
//
//  Created by Togrul Hashimov on 01.02.26.
//

import SwiftUI

struct ContentView: View {
    var restaurant = ["Urfa","Ankara", "Old Baku", "New Baku"]
    var body: some View {
        List {
            ForEach(0...restaurant.count-1, id: \.self) { index in
                HStack {
                    Image("restaurant")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text(restaurant[index])
                }
                
            }
        }
        .listStyle(.sidebar)
    }
}

#Preview {
    ContentView()
}
