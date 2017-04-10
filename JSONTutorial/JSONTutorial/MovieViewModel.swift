//
//  MovieViewModel.swift
//  JSONTutorial
//
//  Created by ninjaKID on 4/9/17.
//  Copyright © 2017 ninjaKID. All rights reserved.
//

import Foundation

struct MovieViewModel {
    let title: String
    let imageUrl: String
    let releaseDate: String
    let purchasePrice: String
    let summary: String
    
    init(model: Movie) {
        self.title = model.title.uppercased()
        self.imageUrl = model.imageURL
        self.releaseDate = "Release date: \(model.releaseDate)"
        if let doublePurchasePrice = Double(model.purchasePrice.amount) {
            self.purchasePrice = String(format: "%.02f %@", doublePurchasePrice, model.purchasePrice.currency)
        } else {
            self.purchasePrice = "Not available for Purchase"
        }
        self.summary = model.summary == "" ? "No data provided" : model.summary
    }
}
