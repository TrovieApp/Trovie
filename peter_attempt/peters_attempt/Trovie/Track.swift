//
//  Tracks.swift
//  Trovie
//
//  Created by Peter Gansy on 5/2/23.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct

struct Track {
    let title: String
    let vote_count: Int
    let artworkUrl100: URL
    // Detail properties
    let vote_average: Double
    let popularity: Double
    let release_date: Date
    let overview: String
}


// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track {

    /// An array of mock tracks
    static var mockTracks: [Track]  = [
        Track(title: "John Wick: Chapter 4",
              vote_count: 343,
              artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w185/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg")!,
              vote_average: 8.2,
              popularity: 3734.86,
              release_date: Date(),
              overview: "With the price on his head ever increasing, John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes."),
        Track(title: "Creed III",
              vote_count: 429,
              artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w185/vJU3rXSP9hwUuLeq8IpfsJShLOk.jpg")!,
              vote_average: 7.055,
              popularity: 1148.95,
              release_date: Date(),
              overview: "After dominating the boxing world, Adonis Creed has been thriving in both his career and family life. When a childhood friend and former boxing prodigy, Damien Anderson, resurfaces after serving a long sentence in prison, he is eager to prove that he deserves his shot in the ring. The face-off between former friends is more than just a fight. To settle the score, Adonis must put his future on the line to battle Damien — a fighter who has nothing to lose."),
        Track(title: "Black Panther: Wakanda Forever",
              vote_count: 4296,
              artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w185/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!,
              vote_average: 7.309,
              popularity: 1770.433,
              release_date: Date(),
              overview: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death. As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda."),
        Track(title: "Scream VI",
              vote_count: 411,
              artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w185/aePBN8ffLCHoUXp8lkA5P29CXdx.jpg")!,
              vote_average: 7.3,
              popularity: 657.83,
              release_date: Date(),
              overview:"Following the latest Ghostface killings, the four survivors leave Woodsboro behind and start a fresh chapter."),
        Track(title: "Shazam! Fury of the Gods",
              vote_count: 249,
              artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w185/3GrRgt6CiLIUXUtoktcv1g2iwT5.jpg")!,
              vote_average: 7,
              popularity: 1194.931,
              release_date: Date(),
              overview: "Billy Batson and his foster siblings, who transform into superheroes by saying \"Shazam!\", are forced to get back into action and fight the Daughters of Atlas, who they must stop from using a weapon that could destroy the world.")
        
    ]
}


