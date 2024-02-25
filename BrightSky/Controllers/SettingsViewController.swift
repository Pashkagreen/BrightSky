//
//  SettingsViewController.swift
//  BrightSky
//
//  Created by Paul Grin on 24/02/2024.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private let primaryView: SettingsView = {
        let view = SettingsView()
        let viewModel = SettingsViewViewModel(options: SettingsOption.allCases)
        view.configure(with: viewModel)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpView()
    }
    
    func setUpView() {
        view.backgroundColor = .systemBackground
        view.addSubview(primaryView)
        NSLayoutConstraint.activate([
            primaryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            primaryView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            primaryView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            primaryView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }

}
