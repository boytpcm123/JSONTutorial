//
//  Movie.swift
//  JSONTutorial
//
//  Created by ninjaKID on 4/8/17.
//  Copyright © 2017 ninjaKID. All rights reserved.
//

import Foundation
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


extension Movie {
    struct Key {
        static let titleDict = "im:name"
        static let imageURLArray = "im:image"
        static let releaseDateDict = "im:releaseDate"
        static let categoryDict = "category"
        static let rentalPriceDict = "im:rentalPrice"
        static let purchacePriceDict = "im:price"
        static let itunesLinkArray = "link"
        static let summaryDict = "summary"
        static let label = "label"
        static let attributes = "attributes"
        static let amount = "amount"
        static let currency = "currency"
        static let href = "href"
        static let term = "term"
    }
    //failable initializer
    init?(json: [String: AnyObject]) {
        guard let titleDict = json[Key.titleDict] else {
            //let title = titleDict[Key.label] as String,
            
        }
        
        
        
        
        
    }
    
    
    
    
}
