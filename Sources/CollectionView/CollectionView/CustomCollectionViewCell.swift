//
//  CustomCollectionViewCell.swift
//  CollectionView
//
//  Created by Jonathan Ramirez on 01.03.20.
//  Copyright © 2020 Jonathan Ramirez. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    var imageView = UIImageView(frame: CGRect.init(x: 40, y: 40, width: 184, height: 243))

    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView.adjustsImageWhenAncestorFocused = true
        imageView.backgroundColor = .lightGray
        self.contentView.addSubview(imageView);
    
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override var canBecomeFocused: Bool {
        return true
    }

//     override func didUpdateFocus(in context: UIFocusUpdateContext, with withcoordinator: UIFocusAnimationCoordinator) {
//
//        withcoordinator.addCoordinatedAnimations({ [unowned self] in
//            if self.isFocused {
//                self.imageView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
//
//            }
//            else {
//                self.imageView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
//
//            }
//            }, completion: nil)
//    }
//    
            
}
