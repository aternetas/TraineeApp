//
//  StartViewController.swift
//  TraineeApp
//
//  Created by aternetas on 03.09.2024.
//

import UIKit

class StartViewController: BaseViewController<StartViewModel> {

    @IBOutlet weak var themesStackView: UIStackView!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        viewModel = StartViewModel()
    }
}

