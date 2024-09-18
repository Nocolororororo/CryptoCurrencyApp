//
//  SplashView.swift
//  CryptoCurrency
//
//  Created by Cheuk Hei So on 12/9/2024.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack{
            Image("icon")
                .resizable()
                .frame(width:50, height:50)
            
            Text("Welcome to Crypto")
                .font(.title)
            
        }
        .background(
        Image("bgImage")
            .ignoresSafeArea())
    }
}

#Preview {
    SplashView()
}
