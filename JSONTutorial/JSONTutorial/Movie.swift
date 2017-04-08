//
//  Movie.swift
//  JSONTutorial
//
//  Created by ninjaKID on 4/8/17.
//  Copyright © 2017 ninjaKID. All rights reserved.
//

import UIKit

struct Movie {
    
    let title: String
    let imageURL: String
    let releaseDate: String
    let purchasePrice: Price
    let summary: String
}

struct Price {
    let amount: String
    let currency: String
}
