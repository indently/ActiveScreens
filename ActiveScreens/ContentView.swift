//
//  ContentView.swift
//  ActiveScreens
//
//  Created by Federico on 21/11/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var text = "The best app."
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        Text(text)
            .font(.system(size: 30))
            .bold()
            .onChange(of: scenePhase) { currentPhase in
                switch currentPhase {
                case .active:
                    print("App is: Active")
                    self.text = "The best app."
                case .inactive:
                    print("App is: Inactive")
                    self.text = "Please don't leave!"
                case .background:
                    print("App is: Background")
                default:
                    print("Something unexpected...")
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
