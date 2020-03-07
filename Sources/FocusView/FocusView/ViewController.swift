//
//  ViewController.swift
//  FocusView
//
//  Created by Jonathan Ramirez on 02.03.20.
//  Copyright © 2020 Jonathan Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let button = UIButton(type: .system)
    let button2 = UIButton(type:  .system)
    let customView = CustomFocusView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }

    func setupUI() {
       
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button 1", for: .normal)
        button.sizeToFit()
        self.view.addSubview(button)

        customView.translatesAutoresizingMaskIntoConstraints = false
        customView.backgroundColor = .red
        self.view.addSubview(customView)
        
       
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.setTitle("Button 2", for: .normal)
        button2.sizeToFit()
        self.view.addSubview(button2)
    }
    
    func setupConstraints() {
        button.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true

        customView.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 50).isActive = true
        customView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        customView.heightAnchor.constraint(equalTo: button.heightAnchor).isActive = true
        customView.widthAnchor.constraint(equalTo: button.widthAnchor).isActive = true

        button2.topAnchor.constraint(equalTo: customView.bottomAnchor, constant: 50).isActive = true
        button2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }

}

