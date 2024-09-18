//
//  TopMoverItemView.swift
//  CryptoCurrency
//
//  Created by Cheuk Hei So on 10/9/2024.
//

import SwiftUI
import Kingfisher

struct TopMoverItemView: View {
    let coin: CoinModel
    
    var body: some View {
        VStack(alignment: .leading){
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            HStack(spacing: 2){
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .fontWeight(.bold)
            }
            
            Text(coin.priceChangePercentage24H.toPercent())
                .font(.subheadline)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
            
        }
        .frame(width: 140, height: 140)
        .background(Color("bgColor"))
        .overlay{
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color(.gray), lineWidth: 2)
        }
        
    }
}


