//
//  BaseViewController.swift
//  TraineeApp
//
//  Created by aternetas on 03.09.2024.
//

import Foundation
import UIKit

class BaseViewController<VM: BaseViewModel>: UIViewController {
    
    var viewModel: VM!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
