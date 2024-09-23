//
//  ControllerLifecycleVC.swift
//  TraineeApp
//
//  Created by aternetas on 04.09.2024.
//

import UIKit

class ControllerLifecycleVC: LifecycleUIViewController {
    
    @IBOutlet weak var openNewScreenButton: UIButton!
    
    @IBAction func clickOnOpenNewScreenButton(_ sender: Any) {
        guard let demo1VC = storyboard?.instantiateViewController(withIdentifier: "DemoScreen1") else { return }
        demo1VC.title = "New Full Screen"
        navigationController?.pushViewController(demo1VC, animated: true)
    }
}
