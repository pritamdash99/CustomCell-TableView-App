//
//  ChatListCell.swift
//  CustomCellTableViewApp
//
//  Created by Pritam Dash on 09/06/22.
//

import UIKit

class ChatListCell: UITableViewCell {

    @IBOutlet weak var chatImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var statusUserLabel: UILabel!
    @IBOutlet weak var lastTextTimingLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //To store the data about the list of users, we create a class that represents a single user.
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
