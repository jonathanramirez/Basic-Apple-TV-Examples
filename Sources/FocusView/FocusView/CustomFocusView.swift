//
//  CustomFocusView.swift
//  FocusView
//
//  Created by Jonathan Ramirez on 02.03.20.
//  Copyright © 2020 Jonathan Ramirez. All rights reserved.
//

import Foundation
import UIKit

class CustomFocusView: UIView {

    override var canBecomeFocused: Bool {
        return true
    }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with withcoordinator: UIFocusAnimationCoordinator) {
    
        if context.previouslyFocusedView === self  {
         UIView.animate(withDuration: 0.1, animations: {
             context.previouslyFocusedView?.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)

            })
        }
        
        if context.nextFocusedView === self {
         UIView.animate(withDuration: 0.1, animations: {
             context.nextFocusedView?.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
         })
        }
    }
}
