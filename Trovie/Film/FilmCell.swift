//
//  FilmCell.swift
//  Trovie
//
//  Created by Chris on 5/4/23.
//

import UIKit
import Nuke

class FilmCell: UITableViewCell {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var filmTitleLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    func configure(with film: Film) {
        filmTitleLabel.text = film.filmTitle
        infoLabel.text = film.info
        releaseDateLabel.text = film.releaseDate
        ratingLabel.text = String(film.rating)

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: film.artworkURL100, into: posterImageView)
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
