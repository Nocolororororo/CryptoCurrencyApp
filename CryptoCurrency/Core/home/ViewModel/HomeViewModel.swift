//
//  HomeViewModel.swift
//  CryptoCurrency
//
//  Created by Cheuk Hei So on 10/9/2024.
//

import SwiftUI

class HomeViewModel: ObservableObject{
    @Published var coins = [CoinModel]()
    @Published var topCoins = [CoinModel]()
    
    
    
    init(){
        getCoinData()
    }
    
    let apiKey = "CG-E29DEmd3VPGQu728yvyFs9bJ"
    let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=aud&order=market_cap_desc&per_page=50&page=1&sparkline=true&price_change_percentage=24h'"
    
    func getCoinData(){
        
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url) {
            data, response, error in
            if let error = error {
                print("Debug: Error \(error.localizedDescription)")
                return
            }
            if let response = response as? HTTPURLResponse{
                print("DEBUg: Response code \(response.statusCode)")
            }
            guard let data = data else {return}
            let dataString = String(data: data, encoding: .utf8)
            print("DEBUG: Data \(dataString)")
            
            do{
                let coins = try JSONDecoder().decode([CoinModel].self, from: data)
                print("DEBUG: Coin \(coins)")
                DispatchQueue.main.async{
                    self.coins = coins
                    self.checkTopMover()
                }
            }
            catch let error{
                print("DEBUG: Failed to decode data: \(error)")
            }
        }.resume()
    }
        
    
    
    func checkTopMover(){
        let topCoin = coins.sorted(by: { $0.priceChangePercentage24H > $1.priceChangePercentage24H})
        self.topCoins = Array(topCoin.prefix(10))
    }
      
    
   
    }

