//
//  ViewController.swift
//  Buttons
//
//  Created by Jonathan Ramirez on 01.03.20.
//  Copyright © 2020 Jonathan Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let redButton = UIButton(type: .plain)
    let greenButton = UIButton(type: .plain)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    
    func setupUI() {
        redButton.translatesAutoresizingMaskIntoConstraints = false
        redButton.setTitle("Red", for: .normal)
        redButton.backgroundColor = .red
        redButton.addTarget(self, action: #selector(redction), for: .primaryActionTriggered)
        redButton.sizeToFit()
        self.view.addSubview(redButton)

        greenButton.translatesAutoresizingMaskIntoConstraints = false
        greenButton.backgroundColor = .green
        greenButton.setTitle("Green", for: .normal)
        greenButton.addTarget(self, action: #selector(greenAction), for: .primaryActionTriggered)
        greenButton.sizeToFit()
        self.view.addSubview(greenButton)
    }
   
    func setupConstraints() {
        redButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        redButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true

        greenButton.topAnchor.constraint(equalTo: redButton.bottomAnchor, constant: 50).isActive = true
        greenButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }
    
    @objc func greenAction() {
        print("green");
    }
    
    @objc func redction() {
        print("green");
    }
}

