//
//  FriendModel.swift
//  VKClient
//
//  Created by Михаил Сирицын on 03.01.2022.
//

import Foundation
import UIKit

struct UserMod {
    let firstName: String
    let secondName: String
    let logo: UIImage
    var likes: Int
    var fullName: String { firstName + " " + secondName}
}

var friendsModelArrey = [
    UserMod(firstName: "Brad", secondName: "Pitt", logo: UIImage(named: "Brad Pitt") ?? UIImage(), likes: 9083),
    UserMod(firstName: "Johnny", secondName: "Depp", logo: UIImage(named: "Johnny Depp") ?? UIImage(), likes: 6398),
    UserMod(firstName: "Kirsten", secondName: "Dunst", logo: UIImage(named: "Kirsten Dunst") ?? UIImage(), likes: 82106),
    UserMod(firstName: "Keanu", secondName: "Reeves", logo: UIImage(named: "Keanu Reeves") ?? UIImage(), likes: 5398),
    UserMod(firstName: "Mila", secondName: "Kunis", logo: UIImage(named: "Mila Kunis") ?? UIImage(), likes: 58798),
    UserMod(firstName: "Мария", secondName: "Сисина", logo: UIImage(named: "dev2") ?? UIImage(), likes: 58798),
    UserMod(firstName: "Светлана", secondName: "Шишкина", logo: UIImage(named: "dev3") ?? UIImage(), likes: 58798),
    UserMod(firstName: "Филипп", secondName: "Хуеприн", logo: UIImage(named: "muzh1") ?? UIImage(), likes: 58798),
    UserMod(firstName: "Арсений", secondName: "Кидалов", logo: UIImage(named: "muzh2") ?? UIImage(), likes: 58798),
    UserMod(firstName: "Степан", secondName: "Дурило", logo: UIImage(named: "muzh3") ?? UIImage(), likes: 58798),
    UserMod(firstName: "Николай", secondName: "Штырьков", logo: UIImage(named: "muzh4") ?? UIImage(), likes: 58798),
    UserMod(firstName: "Михаил", secondName: "Зачётный", logo: UIImage(named: "muzh5") ?? UIImage(), likes: 58798),
    UserMod(firstName: "Карп", secondName: "Щучий", logo: UIImage(named: "muzh6") ?? UIImage(), likes: 58798),
    UserMod(firstName: "Вольф", secondName: "Кошкин", logo: UIImage(named: "muzh7") ?? UIImage(), likes: 58798),
    UserMod(firstName: "Виктор", secondName: "Ябедин", logo: UIImage(named: "muzh8") ?? UIImage(), likes: 58798),
    UserMod(firstName: "Борис", secondName: "Цой", logo: UIImage(named: "muzh9") ?? UIImage(), likes: 58798),
    UserMod(firstName: "Евгений", secondName: "Кривенко", logo: UIImage(named: "muzh10") ?? UIImage(), likes: 58798),
    UserMod(firstName: "Владимир", secondName: "Путин", logo: UIImage(named: "muzh11") ?? UIImage(), likes: 58798)
]

//var filtredModArrey = friendsModelArrey.sorted { $0.secondName < $1.secondName}
