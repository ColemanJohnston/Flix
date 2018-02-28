//
//  Movie.swift
//  Flix
//
//  Created by Kristine Laranjo on 2/28/18.
//  Copyright © 2018 Coleman Johnston. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var posterUrl: URL?
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        let posterPath = dictionary["poster_path"] as? String
        if let posterPath = posterPath {
            let baseUrlString = "https://image.tmdb.org/t/p/w500"
            let fullPosterPath = baseUrlString + posterPath
            let posterUrl = URL(string: fullPosterPath)
            if posterUrl != nil {
                self.posterUrl = posterUrl
            }
        }
        // Set the rest of the properties
    }
}
