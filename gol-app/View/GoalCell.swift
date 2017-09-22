//
//  GoalCell.swift
//  gol-app
//
//  Created by Alex Villacres on 9/22/17.
//  Copyright © 2017 Alex Villacres. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


    }
    
    func configureCell(goal: Goal) {
        self.goalDescriptionLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgressLbl.text = String(goal.goalProgress)
    }

}
