//
//  ViewController.swift
//  gol-app
//
//  Created by Alex Villacres on 9/20/17.
//  Copyright © 2017 Alex Villacres. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {

    // Outlets
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addGoalBtnPressed(_ sender: Any) {
        print("Btn pressed!")
    }
    
}

