//
//  SongViewController.swift
//  Trovie
//
//  Created by Niyah H on 5/2/23.
//

import UIKit
import Nuke

class SongViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var songImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var song: Song!
    var films: [Film] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Nuke.loadImage(with: song.artworkURL100, into: songImageView)

        // Set labels with the associated track values.
        trackNameLabel.text = song.trackName
        artistNameLabel.text = "by " + song.artistName
        
        tableView.dataSource = self
        films = Film.mockFilms
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell),
           let movieViewController = segue.destination as? MovieViewController {
            
            let film = films[indexPath.row]
            
            movieViewController.film = film
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return films.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "FilmCell", for: indexPath) as! FilmCell

        let film = films[indexPath.row]

        cell.configure(with: film)

        return cell
    }
    
    
}
