//
//  SongCell.swift
//  Trovie
//
//  Created by Chris on 5/4/23.
//

import UIKit
import Nuke

class SongCell: UITableViewCell {

    @IBOutlet weak var songImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    
    func configure(with song: Song) {
        trackNameLabel.text = song.trackName
        artistNameLabel.text = song.artistName

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: song.artworkURL100, into: songImageView)
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
