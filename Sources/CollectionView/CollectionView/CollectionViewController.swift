//
//  CollectionViewController.swift
//  CollectionView
//
//  Created by Jonathan Ramirez on 01.03.20.
//  Copyright © 2020 Jonathan Ramirez. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

    let defaultSize = CGSize.init(width: 184, height: 243)
    let focusSize = CGSize.init(width: 202, height: 267)

    override init(collectionViewLayout layout: UICollectionViewLayout) {
        super.init(collectionViewLayout: layout)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 30
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CustomCollectionViewCell

        if indexPath.row%2 == 0 {
            cell.imageView.image = UIImage(imageLiteralResourceName: "poster-1")
        }else {
            cell.imageView.image = UIImage(imageLiteralResourceName: "poster-2")
        }
        

        return cell
    }


}
