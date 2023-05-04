//
//  HomeViewController.swift
//  Trovie
//
//  Created by Niyah H on 5/2/23.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var HomeSearchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var songs: [Song] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        songs = Song.mockSongs
        //print(films)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell),
           let songViewController = segue.destination as? SongViewController {

            let song = songs[indexPath.row]

            songViewController.song = song
        }
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
