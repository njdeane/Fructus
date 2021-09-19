//
//  FructusApp.swift
//  Fructus
//
//  Created by Nic Deane on 15/9/21.
//

import SwiftUI

@main
struct FructusApp: App {
  
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        OnboardingView()
      } else {
        ContentView()
      }
    }
  }
}

