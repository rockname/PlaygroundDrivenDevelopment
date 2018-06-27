//
//  TwitterTableViewCell.swift
//  Presentation
//
//  Created by rockname on 2018/06/25.
//  Copyright © 2018年 rockname. All rights reserved.
//

import UIKit
import Domain
import SwiftDate

public class TwitterTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userIdLabel: UILabel!
    @IBOutlet weak var postedAtLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!

    override public func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }

    override public func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


    func configure(with status: Status) {
        self.iconImageView.loadImage(with: status.iconUrl)
        self.userNameLabel.text = status.userNmae
        self.userIdLabel.text = "@" + status.userId
        self.postedAtLabel.text = status.createdAt.string(custom: "MM/dd HH:mm")
        self.bodyLabel.text = status.body
    }
}
