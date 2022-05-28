//
//  FriendFotoCollectionViewCell.swift
//  VKClient
//
//  Created by Михаил Сирицын on 30.12.2021.
//

import UIKit

class FriendFotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var likeCountLabel: UILabel!
    
    @IBOutlet var likeButtonImage: UIButton!
    @IBOutlet var fotoFriendCollCell: UIImageView!
    
    var statusButton = false
    var likeBool = false
    
    @IBAction func likeButton(_ sender: Any) {
        changeLikes()
        
        if !statusButton {
            likeButtonImage.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            statusButton = true
        } else {
            likeButtonImage.setImage(UIImage(systemName: "heart"), for: .normal)
            statusButton = false
        }
      }

    
    func changeLikes() {
        var result = Int(likeCountLabel.text!)
        
        if !likeBool {
            result! += 1
            likeBool = true
        } else {
            result! -= 1
            likeBool = false
        }
        
        likeCountLabel.text = String(result!)
    }
    
    func configure(fotoFriend: UIImage, likeCount: String) {
        self.fotoFriendCollCell.image = fotoFriend
        self.likeCountLabel.text = likeCount
    }
}
