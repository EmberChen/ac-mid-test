//
//  MovieDetailViewController.swift
//  MovieApp
//
//  Created by Ember on 2017/3/24.
//  Copyright © 2017年 Ember. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    
    @IBOutlet weak var movieDetailImage: UIImageView!
    @IBOutlet weak var movieDetailLabel: UILabel!
    
    var infoFromMovie:String?
    var picFromMovie:UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        movieDetailImage.image = picFromMovie
        movieDetailLabel.text = infoFromMovie
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
