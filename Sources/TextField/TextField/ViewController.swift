//
//  ViewController.swift
//  TextField
//
//  Created by Jonathan Ramirez on 02.03.20.
//  Copyright © 2020 Jonathan Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let textField = UITextField()
    let label = UILabel()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    
    func setupUI() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Title"
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.sizeToFit()
        self.view.addSubview(label)
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter Text"
        textField.addTarget(self, action: #selector(textChanged(textField:)), for: .editingChanged)
        textField.sizeToFit()
        self.view .addSubview(textField)
    }
    
    func setupConstraints() {
        label.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true

        textField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 100).isActive = true
        textField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }

    @objc func textChanged(textField: UITextField) {
        label.text = textField.text
        label.sizeToFit()
    }
}
