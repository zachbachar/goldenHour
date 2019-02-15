//
//  PostCollectionViewCell.swift
//  GoldenHour
//
//  Created by Zach Bachar on 12/01/2019.
//  Copyright © 2019 Zach Bachar. All rights reserved.
//

import UIKit

class PostCollectionViewCell: UICollectionViewCell {
  
    @IBOutlet weak var postImageView: UIImageView!
    var image:UIImage?
    var post:Post?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        postImageView.contentMode = .scaleAspectFit
        postImageView.image = image
    }
}
