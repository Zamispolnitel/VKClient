//
//  FriendsCell.swift
//  VKClient
//
//  Created by Михаил Сирицын on 30.12.2021.
//

import UIKit

class FriendsCell: UITableViewCell {
    
    
    
    @IBOutlet var friendsFoto: AvatarImage!
    @IBOutlet var friendsName: UILabel!
    
    
    func configure(foto: UIImage, name: String) {
        self.friendsFoto.image = foto
        self.friendsName.text = name
    }
    
}
