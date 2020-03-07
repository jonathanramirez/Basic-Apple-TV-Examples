//
//  ViewController.swift
//  PresentController
//
//  Created by Jonathan Ramirez on 02.03.20.
//  Copyright © 2020 Jonathan Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let redButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    
    func setupUI() {
        redButton.translatesAutoresizingMaskIntoConstraints = false
        redButton.setTitle("show red", for: .normal)
        redButton.addTarget(self, action:#selector(redButtonAction), for: .primaryActionTriggered)
        redButton.sizeToFit()
        self.view.addSubview(redButton)
    }
    
    func setupConstraints() {
        redButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        redButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }

    @objc func redButtonAction() {
        let redViewController = RedViewController()
        self.present(redViewController, animated: true)
    }
}

