//
//  Song.swift
//  Trovie
//
//  Created by Chris on 5/4/23.
//

import Foundation

struct Song {
    let trackName: String
    let artistName: String
    let collectionName: String
    let artworkURL100: URL
    
    static let mockSongs: [Song] = [
        Song(trackName: "Mask Off", artistName: "Future", collectionName: "FUTURE", artworkURL100: URL(string: "https://is4-ssl.mzstatic.com/image/thumb/Music111/v4/f3/f0/01/f3f001e3-a40c-099b-df3e-b292e1e6b854/886446371962.jpg/100x100bb.jpg")!)
    ]
    
}

//struct SongsResponse: Decodable {
//    let results: [Song]
//}
