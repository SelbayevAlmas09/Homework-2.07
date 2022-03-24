//
//  ContactDetailViewController.swift
//  Homework 2.07
//
//  Created by Almas Selbayev on 24.03.2022.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullname
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}
