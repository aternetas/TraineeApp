//
//  StartViewController.swift
//  TraineeApp
//
//  Created by aternetas on 03.09.2024.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var themesStackView: UIStackView!

    private var coordinator = StartCoordinator()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        coordinator.navigationController = navigationController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillThemesStackView()
    }
    
    private func fillThemesStackView() {
        Theme.allCases.forEach { theme in
            let button = UIButton(type: .system)
            button.layer.cornerRadius = 20
            button.backgroundColor = .lightGray.withAlphaComponent(0.2)
            button.setTitle(theme.getName(), for: .normal)
            button.titleLabel?.tintColor = .black
            NSLayoutConstraint.activate([button.heightAnchor.constraint(equalToConstant: 45)])
            button.tag = theme.rawValue
            button.addTarget(self, action: #selector(showNewScreen), for: .touchUpInside)
            themesStackView.addArrangedSubview(button)
        }
    }
    
    @objc private func showNewScreen(_ sender: UIButton) {
        guard let theme = Theme(rawValue: sender.tag) else { return }
        coordinator.show(theme: theme)
    }
}

