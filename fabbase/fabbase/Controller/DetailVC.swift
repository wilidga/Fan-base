//
//  DetailVC.swift
//  fabbase
//
//  Created by Wilman Garcia De Leon on 9/6/20.
//  Copyright © 2020 wilidgadev. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var actorImage: UIImageView!
    
    var actor: Actor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        initData(actor: actor)
        lblDesc.text = actor.details
        actorImage.image = UIImage(named: actor.imageName)
        navigationItem.title = actor.name

        // Do any additional setup after loading the view.
    }
    
    func initProducts(actor: Actor) {
        navigationItem.title = actor.name

    }


   
}
