//
//  RedViewController.swift
//  PresentController
//
//  Created by Jonathan Ramirez on 02.03.20.
//  Copyright © 2020 Jonathan Ramirez. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    let greenButton = UIButton(type: .system)

      override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    
    func setupUI() {
        
        self.view.backgroundColor = .red
        
        greenButton.translatesAutoresizingMaskIntoConstraints = false
        greenButton.setTitle("show green", for: .normal)
        greenButton.addTarget(self, action:#selector(redButtonAction), for: .primaryActionTriggered)
        greenButton.sizeToFit()
        self.view.addSubview(greenButton)
    }
    
    func setupConstraints() {
        greenButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        greenButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }

    @objc func redButtonAction() {
        let greenViewController = GreenViewController()
        self.present(greenViewController, animated: true)
    }

}
