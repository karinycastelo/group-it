//
//  ComunidadeTableViewCell.swift
//  Group-It
//
//  Created by Student on 3/11/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit

class ComunidadeTableViewCell: UITableViewCell {

    @IBOutlet weak var imageComunidade: UIImageView!
    @IBOutlet weak var nomeComunidade: UILabel!
    @IBOutlet weak var numMembro: UILabel!
    @IBOutlet weak var tipo: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
