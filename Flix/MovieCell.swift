//
//  MovieCell.swift
//  Flix
//
//  Created by Coleman Johnston on 2/2/18.
//  Copyright © 2018 Coleman Johnston. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var MovieImageView: UIImageView!
    var movie: Movie? {
        didSet {
            titleLabel.text = movie?.title
            overviewLabel.text = movie?.overview
            MovieImageView.af_setImage(withURL: (movie?.posterUrl)!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
