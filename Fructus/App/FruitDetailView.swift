//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Nic Deane on 17/9/21.
//

import SwiftUI

struct FruitDetailView: View {
  
  //MARK: - PROPERTIES
  var fruit: Fruit
  
  //MARK: - BODY
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {
          // HEADER
          FruitHeaderView(fruit: fruit)
          
          VStack(alignment: .leading, spacing: 20) {
            // TITLE
            Text(fruit.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(fruit.gradientColors[1])
            
            // HEADLINE
            Text(fruit.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)
            
            // NUTRIENTS
            FruitNutrientView(fruit: fruit)
            
            // SUBHEADING
            Text("Learn more about \(fruit.title)".uppercased())
              .fontWeight(.bold)
              .foregroundColor(fruit.gradientColors[1])
            
            // DESCRIPTION
            Text(fruit.description)
              .multilineTextAlignment(.leading)
            
            // LINK
            SourceLinkView()
              .padding(.top, 10)
              .padding(.bottom, 40)
          } //: VSTACK
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center) // won't make a difference on iPhone but will on iPad
        } //: VSTACK
        .navigationBarTitle(fruit.title, displayMode: .inline) // .inline puts the title in the navbar rather than underneath.
        .navigationBarHidden(true) // this line hides the navBar.
      } //: SCROLL
      .edgesIgnoringSafeArea(.top) // this line extends the imageView to the top of the superview (not safe area).
    } //: NAVIGATION
  }
}

//MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FruitDetailView(fruit: fruitsData[0])
  }
}
