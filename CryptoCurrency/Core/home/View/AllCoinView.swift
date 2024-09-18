//
//  AllCoinView.swift
//  CryptoCurrency
//
//  Created by Cheuk Hei So on 10/9/2024.
//
import SwiftUI

struct AllCoinView: View{
    @StateObject var hvm: HomeViewModel
    @State var searchText: String = ""
    var searchCoins : [CoinModel]{
        if searchText.isEmpty{
            return hvm.coins
        }
        else{
            return hvm.coins.filter{$0.name.contains(searchText)}
        }
    }
    
    
    var isSearching: Bool {
        return !searchText.isEmpty
    }
    
    var body: some View {
        VStack(alignment: .leading){
            Text("All Coin")
                .font(.headline)
                .padding()
            
            HStack{
                Text("Coins")
                
                Spacer()
                
                Text("Current Prices")
            }
            .font(.caption)
            .padding(.horizontal)
            
                
                ScrollView{
                    VStack{
                        ForEach(searchCoins){ coin in
                            CoinRowView(coin: coin)
                        }
                        .searchable(text: $searchText)
                    }
                    
                }
            }
        }
    
}

#Preview {
    AllCoinView(hvm: HomeViewModel())
}
