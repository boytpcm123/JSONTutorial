//
//  MovieService.swift
//  JSONTutorial
//
//  Created by ninjaKID on 4/10/17.
//  Copyright © 2017 ninjaKID. All rights reserved.
//

import Foundation
import UIKit

//1 using associatedType in protocol
protocol Gettable {
    associatedtype T
    func get(completion: @escaping (Result<T>) -> Void)
}

//2 conforming the protocol
struct MovieService: Gettable {
    //3
    let endpoint: String = "https://itunes.apple.com/us/rss/topmovies/limit=25/json"
    let downloader = JSONDownloader()
    //the associated type is inferred by <[Movie?]>
    typealias CurrentWeatherCompletionHandler = (Result<[Movie?]>) -> ()
    
    //4 protocol required function
    func get(completion: @escaping CurrentWeatherCompletionHandler) {
        guard let url = URL(string: self.endpoint) else {
            completion(.Error(.invalidURL))
            return
        }
    
        //5 using the JSONDownloader function
        let request = URLRequest(url: url)
        let task = downloader.jsonTask(with: request) { (result) in
            
            DispatchQueue.main.async {
                switch result {
                case .Error(let error):
                    completion(.Error(error))
                    return
                case .Success(let json):
                    //6 parsing the Json response
                    guard let movieJSONFeed = json["feed"] as? [String: AnyObject], let entryArray = movieJSONFeed["entry"] as? [[String: AnyObject]] else {
                        completion(.Error(.jsonParsingFailure))
                        return
                    }
                    //7 maping the array and create Moview objects
                    let movieArray = entryArray.map{Movie(json: $0)}
                    completion(.Success(movieArray))
                }
            }
            
        }
        task.resume()
        
    }
}




