//
//  EmptyTableViewCell.swift
//  Presentation
//
//  Created by rockname on 2018/06/26.
//  Copyright © 2018年 rockname. All rights reserved.
//

import UIKit

public class EmptyTableViewCell: UITableViewCell {

    @IBOutlet weak var emptyLabel: UILabel!
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.emptyLabel.text = R.string.localizable.empty()
    }

    override public func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
