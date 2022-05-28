//
//  FriendModel.swift
//  VKClient
//
//  Created by Михаил Сирицын on 03.01.2022.
//

import Foundation
import UIKit

struct UserMod {
    var name: String
    var logo: UIImage
    var likes: Int
}



var friendsModelArrey = [
    UserMod(name: "Brad Pitt", logo: UIImage(named: "Brad Pitt") ?? UIImage(), likes: 9083),
    UserMod(name: "Johnny Depp", logo: UIImage(named: "Johnny Depp") ?? UIImage(), likes: 6398),
    UserMod(name: "Kirsten Dunst", logo: UIImage(named: "Kirsten Dunst") ?? UIImage(), likes: 82106),
    UserMod(name: "Keanu Reeves", logo: UIImage(named: "Keanu Reeves") ?? UIImage(), likes: 5398),
    UserMod(name: "Mila Kunis", logo: UIImage(named: "Mila Kunis") ?? UIImage(), likes: 58798)
]


