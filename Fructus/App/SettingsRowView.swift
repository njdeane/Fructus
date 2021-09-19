//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Nic Deane on 18/9/21.
//

import SwiftUI

struct SettingsRowView: View {
  
    var body: some View {
      HStack {
        Text("Developer").foregroundColor(Color.gray)
        Spacer()
        Text("Pirate Apps Ltd")
      }
    }
  
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView()
          .previewLayout(.fixed(width: 375, height: 60))
          .padding()
    }
}
