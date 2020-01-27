//
//  FootballFieldDetailViewDataSource.swift
//  FootballField
//
//  Created by Загид Гусейнов on 06.11.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation
import UIKit


class FootballFieldDetailViewDataSource: NSObject {
    var footballField: FootballField!
    
    weak var output: FootballFieldDetailViewDataSourceOutput!
    var collectionView: UICollectionView!    
    
    func configure(collectionView: UICollectionView) {
        self.collectionView = collectionView
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        collectionView.reloadData()
    }
    
    func show(footballField: FootballField) {
        self.footballField = footballField
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        output.didScroll(scrollView: scrollView)
    }
}

extension FootballFieldDetailViewDataSource: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return footballField.image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! FootballFieldDetailCollectionViewCell
        let footballFieldImage = footballField.image[indexPath.item]
        
        cell.imageView.image = footballFieldImage
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let width = collectionView.frame.width
        let height = collectionView.frame.height
        return CGSize(width: width, height: height)
    }
}
