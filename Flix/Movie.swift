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
        
        // Set the rest of the properties
    }
}
