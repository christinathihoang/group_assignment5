//
//  AnimalsTableViewController.swift
//  ch42297_assignment5
//
//  Created by Christina Hoang on 10/6/19.
//  Copyright © 2019 Christina Hoang. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {
    
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var animalNameTextLabel: UILabel!
    @IBOutlet weak var scientificNameTextLabel: UILabel!
    @IBOutlet weak var classTextLabel: UILabel!
    @IBOutlet weak var weightTextLabel: UILabel!
}


class AnimalsTableViewController: UITableViewController {

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem

    // MARK: - Table view data source
    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }
    */
    
    // initialize Animal objects
    let animals = [
        Animal(name: "Rat", scientificName: "Rattus", scientificClass: "Mammalia", size: 0, image: "Rat"),
        Animal(name: "Ox", scientificName: "Bos taurus", scientificClass: "Mammalia", size: 0, image: "Ox"),
        Animal(name: "Tiger", scientificName: "Panthera tigris", scientificClass: "Mammalia", size: 0, image: "Tiger"),
        Animal(name: "Rabbit", scientificName: "Oryctolagus cuniculus", scientificClass: "Mammalia", size: 0, image: "Rabbit"),
        Animal(name: "Komodo Dragon", scientificName: "Varanus komodoensis", scientificClass: "Reptilia", size: 0, image: "Komodo Dragon"),
        Animal(name: "Snake", scientificName: "Serpentes", scientificClass: "Reptilia", size: 0, image: "Snake"),
        Animal(name: "Horse", scientificName: "Equus caballus", scientificClass: "Mammalia", size: 0, image: "Horse"),
        Animal(name: "Goat", scientificName: "Capra aegagrus hircus", scientificClass: "Mammalia", size: 0, image: "Goat"),
        Animal(name: "Monkey", scientificName: "Cercopithecidae", scientificClass: "Mammalia", size: 0, image: "Monkey"),
        Animal(name: "Rooster", scientificName: "Gallus gallus domesticus", scientificClass: "Aves", size: 0, image: "Rooster"),
        Animal(name: "Dog", scientificName: "Canis lupus familiaris", scientificClass: "Mammalia", size: 0, image: "Dog"),
        Animal(name: "Pig", scientificName: "Sus scrofa domesticus", scientificClass: "Mammalia", size: 0, image: "Pig")
    ]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return animals.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    // create cells according to prototype cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let animal = animals[indexPath.section]

        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HeadlineCell", for: indexPath) as! AnimalTableViewCell
        
            cell.animalImageView?.image = UIImage(named: animal.image)
            cell.animalNameTextLabel?.text = animal.name
            return cell
        }
        
        else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "InfoCell", for: indexPath) as! AnimalTableViewCell
            
            cell.scientificNameTextLabel?.text = animal.scientificName
            cell.classTextLabel?.text = animal.scientificClass
            cell.weightTextLabel?.text = String(animal.size)
            return cell
        }
        
        // return default cell if above fails
        return UITableViewCell()
    }

    /*
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AnimalGallerySegue" {
            print ("This worked")
        }
    }
     
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
