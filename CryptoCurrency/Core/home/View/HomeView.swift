//
//  HomeView.swift
//  CryptoCurrency
//
//  Created by Cheuk Hei So on 10/9/2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject var hvm = HomeViewModel()
    @StateObject var nvm = NewsViewModel()
    
    var body: some View {
        
        
            NavigationView{
                ScrollView(.vertical, showsIndicators: false){
                    NewsPreviewView(nvm: nvm)
                    Divider()
                    TopMoverView(hvm: hvm)
                    Divider()
                    AllCoinView(hvm: hvm)
                   
                    
                }
                .navigationTitle("Live Price")
                .background(
                Image("bgImage")
                    .resizable()
                    .ignoresSafeArea())
            }
        }
}

#Preview {
    HomeView()
}
