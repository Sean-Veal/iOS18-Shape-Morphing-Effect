//
//  Page.swift
//  Walkthrough+Morphing
//
//  Created by Sean Veal on 1/27/25.
//

import Foundation

enum Page: String, CaseIterable {
    case page1 = "playstation.logo"
    case page2 = "gamecontroller.fill"
    case page3 = "link.icloud.fill"
    case page4 = "text.bubble.fill"
    
    var title: String {
        switch self {
        case .page1:
            "Welcome to Playstation©"
        case .page2:
            "Dualsense© wireless controller"
        case .page3:
            "Playstation© Remote Play"
        case .page4:
            "Connect With People"
        }
    }
    
    var subtitle: String {
        switch self {
        case .page1:
            "Your journey starts here"
        case .page2:
            "Discover a deeper gaming experience\nwith the Dualsense© controller"
        case .page3:
            "Stream your PS5™ to Mac or\nApple devices."
        case .page4:
            "Reach out and make new friends"
        }
    }
    
    var index: CGFloat {
        switch self {
        case .page1:
            0
        case .page2:
            1
        case .page3:
            2
        case .page4:
            3
        }
    }
    
    var nextPage: Page {
        let index = Int(self.index) + 1
        if index < 4 {
            return Page.allCases[index]
        }
        return self
    }
    
    var previousPage: Page {
        let index = Int(self.index) - 1
        if index >= 0 {
            return Page.allCases[index]
        }
        return self
    }
    
}
