//
//  EventoTableViewCell.swift
//  Group-It
//
//  Created by Student on 3/15/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit

class EventoTableViewCell: UITableViewCell {

    @IBOutlet weak var dateEvent: UILabel!
 
    @IBOutlet weak var dayOfWeek: UILabel!
 
    @IBOutlet weak var nameEvent: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
