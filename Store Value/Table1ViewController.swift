//
//  ViewController.swift
//  Store Value
//
//  Created by Chaitrali chaudhari  on 03/07/19.
//  Copyright © 2019 mirraw.com. All rights reserved.
//

import UIKit

class Table1ViewController: UITableViewController {

    
    let Fitem = ["Frankie","French Fires","Burger"]
    
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
    


}

