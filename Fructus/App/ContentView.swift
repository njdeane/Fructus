//
//  ContentView.swift
//  Fructus
//
//  Created by Nic Deane on 15/9/21.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData

    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in  // The .shuffled modifier just shuffles the order so its not always the same.
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits") // This appears as a title but upon scroll it enters the navigation bar as a classic title.
        } //: NAVIGTION
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
