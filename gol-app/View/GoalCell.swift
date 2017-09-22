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
    
    func configureCell(description: String, type: String, goalProgressAmount: Int) {
        self.goalDescriptionLbl.text = description
        self.goalTypeLbl.text = type
        self.goalProgressLbl.text = String(describing: goalProgressAmount)
    }

}
