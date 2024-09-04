//
//  Theme.swift
//  TraineeApp
//
//  Created by aternetas on 04.09.2024.
//

import Foundation

enum Theme: Int, CaseIterable {
    
    case controllerLifecycle = 0
    case appLifecycle = 1
    
    func getName() -> String {
        switch self {
        case .controllerLifecycle:
            "View Controller Lifecycle"
        case .appLifecycle:
            "Application Lifecycle"
        }
    }
}
