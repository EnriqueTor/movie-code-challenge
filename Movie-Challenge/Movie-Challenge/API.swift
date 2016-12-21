//
//  API.swift
//  Movie-Challenge
//
//  Created by Enrique Torrendell on 12/21/16.
//  Copyright © 2016 Enrique Torrendell. All rights reserved.
//

import Foundation

class API {
    
    class func checkIfRepositoryIsStarred(fullName: String, completion: @escaping (Bool) -> (Void)) {
        
        let urlString = URL(string:"http://www.omdbapi.com/?t=\(fullName)&y=&plot=short&r=json")
        
        guard let unwrappedURL = urlString else { fatalError("Invalid URL") }
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: unwrappedURL) { (data, response, error) in
            
            let httpresponse = response as! HTTPURLResponse
            
            switch httpresponse.statusCode {
            case 204:
                completion(true)
            case 404:
                completion(false)
            default:
                break
            }
        }
        task.resume()
    }
    
}
