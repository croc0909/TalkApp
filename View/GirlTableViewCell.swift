//
//  GirlTableViewCell.swift
//  TalkApp
//
//  Created by AndyLin on 2022/9/14.
//

import UIKit

class GirlTableViewCell: UITableViewCell {

    
    @IBOutlet weak var girlImageView: UIImageView!
    @IBOutlet weak var girlTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        girlImageView.layer.cornerRadius = girlImageView.frame.width / 2
        girlTextView.backgroundColor = UIColor(red: 255/255, green: 217/255, blue: 230/255, alpha: 1)
        girlTextView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
