//
//  NewsModel.swift
//  CryptoCurrency
//
//  Created by Cheuk Hei So on 12/9/2024.
//

import Foundation


struct NewsModel: Identifiable, Codable{
    var id: Int
    var name: String
    var date: String
    var image: String
    var description: String
    
}


let newsSamples = [
   NewsModel(id: 1, name: "Bitcon", date: "09/09/2024", image: "b1", description: "abcabcabcabc"),
   NewsModel(id: 2, name: "DogeCoin", date: "09/07/2024", image: "b2", description: ""),
   NewsModel(id: 3, name: "Meme", date: "08/23/2024", image: "b3", description: ""),
   NewsModel(id: 4, name: "idk", date: "08/10/2024", image: "b4", description: "")
]
