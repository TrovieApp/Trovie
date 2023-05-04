//
//  Film.swift
//  Trovie
//
//  Created by Chris on 5/4/23.
//

import Foundation

struct Film {
    let filmTitle: String
    let releaseDate: String
    let rating: Double
    let info: String
    let artworkURL100: URL
    let genre: [String]
    let description: String
    let trailerURL: URL
    
    static let mockFilms: [Film] = [
        Film(
            filmTitle: "Rick and Morty | S4E4",
            releaseDate: "2019",
            rating: 7.3,
            info: "TV-14 | Adventure/Comedy | 22m",
            artworkURL100: URL(
                string: "https://is5-ssl.mzstatic.com/image/thumb/Video113/v4/74/30/fd/7430fd41-956d-349f-fa2e-3e627623b6dd/pr_source.png/100x100bb.jpg"
            )!,
            genre: ["Adventure", "Comedy"],
            description: "Morty gets a dragon in this one broh. It's a wild ride broh.",
            trailerURL: URL(string: "https://www.youtube.com/embed/UwryDSNK-8E")!
        ),
        Film(
            filmTitle: "Brooklyn Nine-Nine | S5E8",
            releaseDate: "2017",
            rating: 7.8,
            info: "TV-14 | Comedy/Crime | 21m",
            artworkURL100: URL(
                string: "https://is5-ssl.mzstatic.com/image/thumb/Video128/v4/3c/63/2c/3c632c7f-b300-6ebb-f951-118429f62267/mzl.hrlduude.lsr/100x100bb.jpg"
            )!,
            genre: ["Comedy", "Crime"],
            description: "When Terry's favorite author, DC Parlov (guest star Fred Melamed), returns to the precinct because his latest manuscript was stolen, Terry and Jake convince Rosa to go undercover with them at a fantasy fiction convention to find the culprit. As drama ensues between Parlov and another writer (guest star Rob Huebel), Terry admits that he's been writing a book of his own. Back at the precinct, Holt, Amy and Charles take a forensics course, but Charles' big mouth gets him in trouble.",
            trailerURL: URL(string: "https://www.youtube.com/embed/cA8zQVLznbA")!
        )
    ]
    
}
