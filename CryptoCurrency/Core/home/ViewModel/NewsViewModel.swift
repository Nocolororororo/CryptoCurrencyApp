//
//  NewsViewModel.swift
//  CryptoCurrency
//
//  Created by Cheuk Hei So on 12/9/2024.
//

import Foundation


class NewsViewModel: ObservableObject {
    
  
    @Published var news: [NewsModel]
    
    
   
    init(filename: String = "newsData.json") {
        let decoder = JSONDecoder()
        guard let url = Bundle.main.url(forResource: filename, withExtension: nil),
              let data = try? Data(contentsOf: url),
              let news = try? decoder.decode([NewsModel].self, from: data)
        else {
            self.news = []
            return
        }
        self.news = news
    }
}
