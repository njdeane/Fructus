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
                ForEach(fruits) { item in
                    FruitRowView(fruit: item)
                }
            }
        } //: NAVIGTION
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
