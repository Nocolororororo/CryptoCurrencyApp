//
//  CoinRowView.swift
//  CryptoCurrency
//
//  Created by Cheuk Hei So on 10/9/2024.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    let coin: CoinModel
    var body: some View {
            HStack{
                Text("\(coin.marketCapRank ?? 1)")
                    .font(.caption)
                    
                
                KFImage(URL(string: coin.image))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.orange)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("\(coin.name)")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.leading, 4)
                    
                    Text("\(coin.symbol.uppercased())")
                        .font(.caption)
                        .padding(.leading, 4)
                }
                
                .padding(.leading, 2)
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 4) {
                    Text(coin.currentPrice.toCurrency())
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.leading, 4)
                    
                    Text(coin.priceChangePercentage24H.toPercent())
                        .font(.caption)
                        .padding(.leading, 4)
                        .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
                }
                
                .padding(.leading, 2)
                
            }
            .padding()
            .background(Color("bgColor"))
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: .primary.opacity(0.2), radius: 10, x: 0, y: 5)
            }
        }
    

