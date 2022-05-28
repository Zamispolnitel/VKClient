//
//  MyGroupsCell.swift
//  VKClient
//
//  Created by Михаил Сирицын on 03.01.2022.
//

import UIKit

final class MyGroupsCell: UITableViewCell {

    @IBOutlet var groupEmblem: UIImageView!
    @IBOutlet var groupName: UILabel!
    
    func configure(groupFoto: UIImage, groupName: String) {
        self.groupEmblem.image = groupFoto
        self.groupName.text = groupName
    }
    
}
