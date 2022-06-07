//
//  AllFriendsTableVC.swift
//  VKClient
//
//  Created by Михаил Сирицын on 30.12.2021.
//

import UIKit

class AllFriendsTableVC: UITableViewController {
    
    @IBOutlet var searchBar: UISearchBar!
    
    var searchActiv = false
    var filtredName = [String]()
    
    struct Section {
        let letter : String
        let names : [String]
    }
    
    var sections = [Section]()
    var userSecondName = friendsModelArrey.map{$0.secondName}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
        
        let groupedDictionary = Dictionary(grouping: userSecondName, by: {String($0.prefix(1))})
        let keys = groupedDictionary.keys.sorted()
        sections = keys.map{ Section(letter: $0, names: groupedDictionary[$0]!.sorted()) }
        
        self.tableView.reloadData()
        
        tableView.register(UINib(nibName: "FriendsCell", bundle: nil), forCellReuseIdentifier: "friendsCell")
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "friendsCell", for: indexPath) as? FriendsCell
        else {
            return UITableViewCell()
        }
        
        if searchActiv {
            let name = friendsModelArrey[indexPath.row]
            cell.configure(foto: name.logo, name: name.fullName)
        } else {
            let section = sections[indexPath.section]
            let username = section.names[indexPath.row]
                    
            for name in friendsModelArrey {
                if name.secondName == username {
                    cell.configure(foto: name.logo, name: name.fullName)
                }
            }
        }
        
        
        
        cell.friendsFoto.layer.borderWidth = 2
        cell.friendsFoto.layer.borderColor = UIColor.black.cgColor
        cell.friendsFoto.layer.cornerRadius = 34 //cell.frame.height / 2
        cell.friendsFoto.layer.masksToBounds = true
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchActiv {
            return filtredName.count
        } else {
            return sections[section].names.count
        }
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        sections.count
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        sections.map{$0.letter}
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        sections[section].letter
    }
    
    override func prepare( for segue: UIStoryboardSegue, sender: Any? ) {
            guard segue.identifier == "friendFotoSegue", let indexPath = tableView.indexPathForSelectedRow else { return }
            guard let destination = segue.destination as? FriendsFotoCollectionVC else { return }
        destination.friend = friendsModelArrey[indexPath.row].logo
        destination.likes = friendsModelArrey[indexPath.row].likes
        }
        
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            defer { tableView.deselectRow(
                at: indexPath,
                animated: true)}
            performSegue(
                withIdentifier: "friendFotoSegue",
                sender: nil)
        }
}

extension AllFriendsTableVC: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        filtredName = friendsModelArrey.map{$0.secondName}.filter({ return $0.lowercased().contains(searchText.lowercased()) })
                if(filtredName.count == 0){
                    searchActiv = false;
                } else {
                    searchActiv = true;
                }
                self.tableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
    }
    
}
