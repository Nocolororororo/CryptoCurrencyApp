//
//  TopMoverView.swift
//  CryptoCurrency
//
//  Created by Cheuk Hei So on 10/9/2024.
//

import SwiftUI

struct TopMoverView: View {
    @StateObject var hvm: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {

        
            Text("Top Mover Today")
                .font(.headline)
            ScrollView(.horizontal){
                HStack(spacing: 15){
                    ForEach(hvm.topCoins) { coin in
                        TopMoverItemView(coin: coin)
                    }
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    TopMoverView(hvm: HomeViewModel())
}
