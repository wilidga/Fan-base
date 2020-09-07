//
//  ViewController.swift
//  fabbase
//
//  Created by Wilman Garcia De Leon on 9/6/20.
//  Copyright © 2020 wilidgadev. All rights reserved.
//

import UIKit

class MovieVC: UIViewController, UITableViewDataSource, UITableViewDelegate,UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
    
   
    

     @IBOutlet weak var movieTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTable.dataSource = self
        movieTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return DataService.instance.getMovies().count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           if let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as? MovieCell {
               let movie = DataService.instance.getMovies()[indexPath.row]
               cell.updateViews(movie: movie)
               return cell
           } else {
               return MovieCell()
           }
       }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
         if let tableCell = cell as? MovieCell {
             tableCell.setCollectionViewDataSourceDelegateForRow(dataSource: self, delegate: self, forRow: indexPath.row)
         }
     }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          return DataService.instance.getActors(item: collectionView.tag).count
      }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: 150, height: 250)
       }
    
      func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
               let actor = DataService.instance.getActors(item: collectionView.tag)[indexPath.row]
                performSegue(withIdentifier: "DetailVC", sender: actor)
        }

    
   
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
          if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorCell", for: indexPath) as? ActorCell {
          
           let actor = DataService.instance.getActors( item: collectionView.tag)[indexPath.row]
          
                 cell.updateViews(actor: actor)
           
                 return cell
             }
           
             return ActorCell()
      }
    
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let detailDescriptionVC = segue.destination as? DetailVC {
                let barBtn = UIBarButtonItem()
                barBtn.title = ""
                navigationItem.backBarButtonItem = barBtn
                assert(sender as? Actor != nil)
                detailDescriptionVC.initProducts(actor: sender as! Actor)
                detailDescriptionVC.actor = (sender as! Actor)
            }
         }


}


