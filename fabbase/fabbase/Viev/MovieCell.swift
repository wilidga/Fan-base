//
//  MovieCell.swift
//  fab-base
//
//  Created by Wilman Garcia De Leon on 9/5/20.
//  Copyright © 2020 wilidgadev. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var actorsCollection: UICollectionView!
    
    func updateViews(movie: Movie){
        movieTitle.text = movie.movieTitle
    }
    

    func setCollectionViewDataSourceDelegateForRow(dataSource: UICollectionViewDataSource, delegate: UICollectionViewDelegate, forRow: Int) {
        actorsCollection.delegate = delegate
        actorsCollection.dataSource = dataSource
        actorsCollection.tag = forRow
        actorsCollection.reloadData()
    }
    
    
}
