//
//  UserDataTableViewCell.swift
//  HttpGetExample
//
//  Created by fordlabs on 24/07/19.
//  Copyright © 2019 fordlabs. All rights reserved.
//

import UIKit

class UserDataTableViewCell: UITableViewCell {

    
    @IBOutlet weak var airlinesLabel: UILabel!
    
    @IBOutlet weak var airlinesId: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
