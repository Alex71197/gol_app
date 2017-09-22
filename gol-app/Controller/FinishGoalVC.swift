//
//  FinishGoalVC.swift
//  gol-app
//
//  Created by Alex Villacres on 9/22/17.
//  Copyright © 2017 Alex Villacres. All rights reserved.
//

import UIKit
import CoreData

class FinishGoalVC: UIViewController {

    // Outlets
    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTxtField: UITextField!
    
    // Variables
    var goalDescription: String!
    var goalType: GoalType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()

    }

    // IBActions
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    @IBAction func createGoalBtnPressed(_ sender: Any) {
        // Pass data into CoreData
        if pointsTxtField.text != "" {
            self.save { (complete) in
                if complete {
                    print("successfully saved data")
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    // Custom Functions
    
    func initData(description: String, type: GoalType) {
        self.goalType = type
        self.goalDescription = description
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTxtField.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            completion(true)
        } catch {
            debugPrint("could not save: \(error.localizedDescription)")
            completion(false)
        }
        
    }
    
    
    
    
    
    
    
}
