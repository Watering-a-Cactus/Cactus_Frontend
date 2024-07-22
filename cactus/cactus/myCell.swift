//
//  myCell.swift
//  cactus
//
//  Created by 김영광 on 7/22/24.
//

import UIKit

class myCell: UITableViewCell {

    @IBOutlet weak var myBubble: UIView!
    @IBOutlet weak var myMessage: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // myMessage.text = "myMessage"
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
