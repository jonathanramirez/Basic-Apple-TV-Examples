//
//  ViewController.swift
//  CollectionView
//
//  Created by Jonathan Ramirez on 01.03.20.
//  Copyright © 2020 Jonathan Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let collectionView = CollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.view.frame = self.view.frame;
        self.addChild(collectionView)
        self.collectionView.didMove(toParent: self)
        self.view.addSubview(collectionView.view);
    }


}

