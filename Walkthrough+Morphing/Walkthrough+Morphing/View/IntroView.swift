//
//  IntroView.swift
//  Walkthrough+Morphing
//
//  Created by Sean Veal on 1/27/25.
//

import SwiftUI

struct IntroView: View {
    // View Properties
    @State private var activePage: Page = .page1
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            VStack {
                Spacer(minLength: 0)
                
                MorphingSymbolView(symbol: activePage.rawValue, config: .init(font: .system(size: 150, weight: .bold), frame: .init(width: 250, height: 200), radius: 30, foregroundColor: .white))
            }
            .frame(maxWidth: .infinity)
        }
        .background {
            Rectangle()
                .fill(.black.gradient)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
