//
//  SecondTableCell.swift
//  CFC
//
//  Created by Baskaran Thanigaimani (Digital) on 31/05/17.
//  Copyright © 2017 Baskaran Thanigaimani (Digital). All rights reserved.
//

import UIKit

class SecondTableCell: UITableViewCell {

    @IBOutlet weak var sfimg: UIImageView!
    @IBOutlet weak var ssimg: UIImageView!
    @IBOutlet weak var stimg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
