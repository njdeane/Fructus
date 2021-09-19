//
//  ContentView.swift
//  Fructus
//
//  Created by Nic Deane on 15/9/21.
//

import SwiftUI

struct ContentView: View {
  
  //MARK: - PROPERTIES
  
  @State private var isShowingSettings: Bool = false
  
  var fruits: [Fruit] = fruitsData
  
  //MARK: - BODY
  var body: some View {
    NavigationView {
      List {
        ForEach(fruits.shuffled()) { item in  // The .shuffled modifier just shuffles the order so its not always the same.
          NavigationLink(destination: FruitDetailView(fruit: item)) {
            FruitRowView(fruit: item)
              .padding(.vertical, 4)
          }
        }
      }
      .navigationTitle("Fruits") // This appears as a title but upon scroll it enters the navigation bar as a classic title.
      .navigationBarItems(
        trailing:
          Button(action: {
            isShowingSettings = true
          }) {
            Image(systemName: "slider.horizontal.3")
          }
          .sheet(isPresented: $isShowingSettings) {
            SettingsView()
          }
      )
    }
    .navigationViewStyle(StackNavigationViewStyle()) // This changes the navigation style to be the same as iPhone for iPad (not nice)
  }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(fruits: fruitsData)
  }
}
