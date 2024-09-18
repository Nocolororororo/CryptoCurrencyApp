//
//  NewsView.swift
//  CryptoCurrency
//
//  Created by Cheuk Hei So on 12/9/2024.
//

import SwiftUI

struct NewsView: View {
    
   @ObservedObject var nvm = NewsViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                HStack{
                    
                    VStack{
                        ForEach(nvm.news.indices, id: \.self) { news in
                            NavigationLink(destination: NewsDetailView(news:  $nvm.news[news])) {
                                NewRowView(news: $nvm.news[news])
                            }
                        }
                    }
                }
            }
            .navigationTitle("Crypto News")
            .background(
            Image("bgImage")
                .resizable()
                .ignoresSafeArea())
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView(nvm: NewsViewModel())
    }
}
