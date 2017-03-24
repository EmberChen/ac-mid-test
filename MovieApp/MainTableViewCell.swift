//
//  MainTableViewCell.swift
//  MovieApp
//
//  Created by Ember on 2017/3/24.
//  Copyright © 2017年 Ember. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cellImage: UIImageView!
    
    @IBOutlet weak var cellTitle: UILabel!
    
    @IBOutlet weak var cellTime: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
