//
//  AllFriendsTableVC.swift
//  VKClient
//
//  Created by Михаил Сирицын on 30.12.2021.
//

import UIKit

class AllFriendsTableVC: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "FriendsCell", bundle: nil), forCellReuseIdentifier: "friendsCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friendsModelArrey.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        guard
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendsCell", for: indexPath) as? FriendsCell
        else {
            return UITableViewCell()
        }
        
        let currentFriendAcc = friendsModelArrey[indexPath.row]
        
        
        cell.configure(foto: currentFriendAcc.logo, name: currentFriendAcc.name)
    
        cell.friendsFoto.layer.borderWidth = 2
        cell.friendsFoto.layer.borderColor = UIColor.black.cgColor
        cell.friendsFoto.layer.cornerRadius = 50     //cell.frame.height / 2
        cell.friendsFoto.layer.masksToBounds = true
        

        return cell
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
    
//    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        defer {
//            tableView.deselectRow(at: indexPath, animated: true)
//        }
//        performSegue(withIdentifier: "friendFotoSegue", sender: nil)
//    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
