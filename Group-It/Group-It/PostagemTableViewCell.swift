//
//  PostagemTableViewCell.swift
//  Group-It
//
//  Created by Student on 3/11/16.
//  Copyright © 2016 HACKATRUCK. All rights reserved.
//

import UIKit

class PostagemTableViewCell: UITableViewCell {

    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var nameProfile: UILabel!
    @IBOutlet weak var datePostagem: UILabel!
    @IBOutlet weak var descricao: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
