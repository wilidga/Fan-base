//
//  ActorDetail.swift
//  fabbase
//
//  Created by Wilman Garcia De Leon on 9/6/20.
//  Copyright © 2020 wilidgadev. All rights reserved.
//

import UIKit

class ActorDetail: UIView {

  @IBOutlet weak var actorImage: UIImageView!
     @IBOutlet weak var name: UILabel!
     
     func updateViews(actor: Actor){
         
         actorImage.image = UIImage(named: actor.imageName)
         name.text = actor.name
         
     }

}
