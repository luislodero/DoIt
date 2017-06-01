//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Luis Lopez on 5/31/17.
//  Copyright © 2017 Luis Lopez. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBOutlet weak var taskNameText: UITextField!

    var previousVC = TasksViewController()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped( sender: Any) {
        
        let task = Task()
        task.name = taskNameText.text!
        task.important = importantSwitch.isOn
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)}
        
        
}

