//
//  SearchTableViewController.swift
//  SampleSearch
//
//  Created by Faraz Habib on 06/06/18.
//  Copyright © 2018 Faraz Habib. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController {

    var dataSource = [Candy]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.separatorStyle = .none
        
        let cell = UINib(nibName: "SearchTableViewCell", bundle: nil)
        tableView.register(cell, forCellReuseIdentifier: "candyCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "candyCell", for: indexPath) as! SearchTableViewCell
        
        let candy = dataSource[indexPath.row]
        cell.lbl.text = candy.name

        return cell
    }

}
