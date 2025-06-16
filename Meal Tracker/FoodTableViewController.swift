//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Sameer Bhati on 16/06/25.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        let breakfastFoods = [
            Food(name: "Pancakes", description: "Fluffy pancakes with maple syrup"),
            Food(name: "Scrambled Eggs", description: "Eggs with butter and salt"),
            Food(name: "Orange Juice", description: "Freshly squeezed orange juice")
        ]
        
        let lunchFoods = [
            Food(name: "Grilled Chicken Sandwich", description: "Chicken breast with lettuce and tomato"),
            Food(name: "French Fries", description: "Crispy golden fries"),
            Food(name: "Iced Tea", description: "Sweetened cold tea with lemon")
        ]
        
        let dinnerFoods = [
            Food(name: "Spaghetti Bolognese", description: "Pasta with rich meat sauce"),
            Food(name: "Garlic Bread", description: "Toasted bread with garlic and butter"),
            Food(name: "Caesar Salad", description: "Lettuce with Caesar dressing and croutons")
        ]
        
        return [
            Meal(name: "Breakfast", food: breakfastFoods),
            Meal(name: "Lunch", food: lunchFoods),
            Meal(name: "Dinner", food: dinnerFoods)
        ]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let meal = meals[section]
        return meal.food.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let food = meals[indexPath.section]

        // Configure the cell...
        var content = cell.defaultContentConfiguration()
        content.text = food.food[indexPath.row].name
        content.secondaryText=food.food[indexPath.row].description
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }

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
