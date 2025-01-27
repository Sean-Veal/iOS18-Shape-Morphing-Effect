//
//  ContentView.swift
//  Walkthrough+Morphing
//
//  Created by Sean Veal on 1/27/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        IntroView()
            .environment(\.colorScheme, .dark)
    }
}

#Preview {
    ContentView()
}
