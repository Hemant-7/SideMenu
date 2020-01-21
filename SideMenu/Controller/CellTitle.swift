//
//  CellTitle.swift
//  SideMenu
//
//  Created by Brain Tech on 30/10/1941 Saka.
//  Copyright © 1941 Brain Tech. All rights reserved.
//

import UIKit

class CellTitle: UITableViewCell {

    @IBOutlet var viewTitleContainer: UIView!
    @IBOutlet var imgTitle: UIImageView!
    @IBOutlet var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
