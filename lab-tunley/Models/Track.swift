//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Track {
    let trackName: String
    let artistName: String
    let artworkUrl100: URL
    let collectionName: String
    let primaryGenreName: String
    let releaseDate: Date
    let trackTimeMillis: Int
}

// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track {
     static var mockTracks: [Track]  = [
         Track(trackName: "Black Hippie, White Hipster",
               artistName: "Young Nudy & Pi'erre Bourne",
               artworkUrl100: URL(string:"https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/c1/80/73/c18073e3-6e9e-2214-c6cb-2b694c21ace0/886447683903.jpg/100x100bb.jpg")!,
               collectionName: "Sli'merre",
               primaryGenreName: "Hip-Hop/Rap",
               releaseDate: Date(),
               trackTimeMillis: 158720

              ),
         Track(trackName: "Gas Station",
               artistName: "Young Nudy & Pi'erre Bourne",
               artworkUrl100: URL(string: "https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/c1/80/73/c18073e3-6e9e-2214-c6cb-2b694c21ace0/886447683903.jpg/100x100bb.jpg")!,
               collectionName: "Sli'merre",
               primaryGenreName: "Hip-Hop/Rap",
               releaseDate: Date(),
               trackTimeMillis: 178133
              ),
         Track(trackName: "Long Ride",
               artistName: "Young Nudy & Pi'erre Bourne",
               artworkUrl100: URL(string: "https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/c1/80/73/c18073e3-6e9e-2214-c6cb-2b694c21ace0/886447683903.jpg/100x100bb.jpg")!,
               collectionName: "Sli'merre",
               primaryGenreName: "Hip-Hop/Rap",
               releaseDate: Date(),
               trackTimeMillis: 260080
              )
     ]
}


// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
