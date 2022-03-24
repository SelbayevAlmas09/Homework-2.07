//
//  PersonListWithSectionTableViewController.swift
//  Homework 2.07
//
//  Created by Almas Selbayev on 24.03.2022.
//

import UIKit

class PersonListWithSectionViewController: UITableViewController {
    var personList: [Person]!

    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].fullname
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        let person = personList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "phone")
            content.text = person.phone
        } else {
            content.image = UIImage(systemName: "mail")
            content.text = person.email
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}
