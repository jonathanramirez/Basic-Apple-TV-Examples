//
//  ViewController.swift
//  Alerts
//
//  Created by Jonathan Ramirez on 01.03.20.
//  Copyright © 2020 Jonathan Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let simpleTitle = "Simple Alert"
    let simpleMessage = "Message"
    let buttonTitle = "OK"
    let buttonRetry = "Retry"
    let buttonDestructive = "Cancel"

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func alert1(_ sender: Any) {
    
        let alert = UIAlertController(title: simpleTitle, message: simpleMessage, preferredStyle: .alert)
        let doneAction = UIAlertAction(title: buttonTitle, style: .default) { _ in
                print("OK was pressed")
        }
        alert.addAction(doneAction)
            
        present(alert, animated: true, completion: nil)

        
    }
    
    @IBAction func alert2(_ sender: Any) {
    
        
        let alert = UIAlertController(title: simpleTitle, message: simpleMessage, preferredStyle: .alert)
        let doneAction = UIAlertAction(title: buttonTitle, style: .default) { _ in
            print("OK was pressed")
        }
        alert.addAction(doneAction)
        
        let retryAction = UIAlertAction(title: buttonRetry, style: .cancel) { _ in
            print("Retry was pressed")
        }
        alert.addAction(retryAction)
        
        present(alert, animated: true, completion: nil)

        
    }
    
    @IBAction func alert3(_ sender: Any) {
        
        let alert = UIAlertController(title: simpleTitle, message: simpleMessage, preferredStyle: .alert)
        let doneAction = UIAlertAction(title: buttonTitle, style: .default) { _ in
            print("OK was pressed")
        }
        alert.addAction(doneAction)
        
        let cancelAction = UIAlertAction(title: buttonDestructive, style: .destructive) { _ in
            print("Cancel was pressed")
        }
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)

    }
}

