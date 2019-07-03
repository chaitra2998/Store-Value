//
//  ViewController.swift
//  Store Value
//
//  Created by Chaitrali chaudhari  on 03/07/19.
//  Copyright © 2019 mirraw.com. All rights reserved.
//

import UIKit

class Table1ViewController: UITableViewController {

    
    var Fitem = ["Frankie","French Fries","Burger"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Fitem.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = Fitem[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(Fitem[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    

    @IBAction func BtnAdd(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add new Food Item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item", style: .default) { (Action) in
            //Actions take place when add button clicked
            self.Fitem.append(textField.text!)
            self.tableView.reloadData()
        
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new item"
            textField = alertTextField
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
      
        
    }
    
}

