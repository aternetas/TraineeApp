//
//  StartCoordinator.swift
//  TraineeApp
//
//  Created by aternetas on 04.09.2024.
//

import UIKit

class StartCoordinator {
    
    var navigationController: UINavigationController!
    
    func show(theme: Theme) {
        let vc: UIViewController = switch theme {
        case .controllerLifecycle:
            UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "ControllerLifecycleVC")  as! ControllerLifecycleVC
        }
        vc.title = theme.getName()
        navigationController.pushViewController(vc, animated: true)
    }
}
