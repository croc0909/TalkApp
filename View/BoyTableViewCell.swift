//
//  BoyTableViewCell.swift
//  TalkApp
//
//  Created by AndyLin on 2022/9/14.
//

import UIKit

class BoyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var boyImageView: UIImageView!
    @IBOutlet weak var boyTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        boyImageView.layer.cornerRadius = boyImageView.frame.width / 2
        boyTextView.backgroundColor = UIColor(red: 0/255, green: 255/255, blue: 255/255, alpha: 1)
        boyTextView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
