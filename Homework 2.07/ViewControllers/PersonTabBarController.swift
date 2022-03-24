//
//  MainViewController.swift
//  Homework 2.07
//
//  Created by Almas Selbayev on 24.03.2022.
//

import UIKit

class PersonTabBarController: UITabBarController {
    let persons = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shareData(persons)
    }
    
    private func shareData(_ persons: [Person]) {
        guard let viewControllers = self.viewControllers else { return }
        
        for viewController in viewControllers {
            if let navigationVC = viewController as? UINavigationController {
                if let personListVC = navigationVC.topViewController as? PersonListViewController {
                    personListVC.personList = persons
                } else if let personListWithSectionVC = navigationVC.topViewController as? PersonListWithSectionViewController {
                    personListWithSectionVC.personList = persons
                }
            }
        }
    }
    
}
