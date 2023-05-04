//
//  ViewController.swift
//  Trovie
//
//  Created by Benjamin Hoesli on 28.03.23.
//

import UIKit


import Foundation
import WebKit


class MovieViewController: UIViewController {

    @IBOutlet weak var TrailerView: WKWebView!
    
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var releaseYearLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var film: Film!
    var songs: [Song] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getVideo(videoCode: "UwryDSNK-8E")
        
        // Do any additional setup after loading the view.
        func getVideo(videoCode: String){
            let url = film.trailerURL
            TrailerView.load(URLRequest(url:url))
            
        }
            
        ratingLabel.text = String(film.rating)
        releaseYearLabel.text = film.releaseDate
        titleLabel.text = film.filmTitle
        genreLabel.text = film.genre.joined(separator:" | ")
        descriptionLabel.text = film.description
        
        songs = Song.mockSongs
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "SongCell", for: indexPath) as! SongCell

        let song = songs[indexPath.row]

        cell.configure(with: song)

        return cell
    }
        
}
    

