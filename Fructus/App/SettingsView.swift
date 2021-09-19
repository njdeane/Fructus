//
//  SettingsView.swift
//  Fructus
//
//  Created by Nic Deane on 18/9/21.
//

import SwiftUI

struct SettingsView: View {
  
  @Environment(\.presentationMode) var presentationMode
  @AppStorage("isOnboarding") var isOnboarding: Bool = false
  
  
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          // Section 1
          GroupBox(
            label:
              SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
          ) {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(9)
              
              Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietry fiber, vitamins, and much more.")
                .font(.footnote)
            }
          }
          // Section 2
          GroupBox(
          label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
          ) {
            Divider().padding(.vertical, 4)
            Text("If you wish you can restart the application by toggling the switch in this box. That will start the onboarding process and you will see the welcome screen again.")
              .padding(.vertical, 8) // adds padding to the top of the text
              .frame(minHeight: 60) // minumum height of the text view
              .layoutPriority(1) // this ensures all the text will be displayed as views default is 0 so some text can be truncated
              .font(.footnote)
              .multilineTextAlignment(.leading)
            
            Toggle(isOn: $isOnboarding) { // The $ makes it a 'binding property' so each time user toggles it updates the app storage (prior user defaults). each toggle will either change property of isOnboarding to true or false.. fucking amazing!
              Text("Restart".uppercased())
            }
          }
          
          // Section 3
          GroupBox(
            label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
          ) {
            SettingsRowView(name: "Developer", content: "Pirate Apps Inc")
            SettingsRowView(name: "Designer", content: "Nic Deane")
            SettingsRowView(name: "Compatibility", content: "iOS 14.1+")
            SettingsRowView(name: "Website", linkLabel: "ArtStage App", linkDestination: "artstageapp.com")
            SettingsRowView(name: "App Version", content: "2.0")
          }
        }
        .navigationBarTitle(Text("Settings"), displayMode: .large)
        .navigationBarItems(
          trailing:
            Button(action: {
              presentationMode.wrappedValue.dismiss()
            }) {
              Image(systemName: "xmark")
            }
        )
        .padding()
      }
    }
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
      .preferredColorScheme(.dark)
  }
}

