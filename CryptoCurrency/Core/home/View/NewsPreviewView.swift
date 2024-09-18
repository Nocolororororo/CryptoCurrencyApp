//
//  NewsPreviewView.swift
//  CryptoCurrency
//
//  Created by Cheuk Hei So on 15/9/2024.
//

import SwiftUI

struct NewsPreviewView: View {
    @StateObject var nvm: NewsViewModel
    
    var body: some View {
        VStack(alignment: .leading) {

        
            Text("Today's News")
                .font(.headline)
            ScrollView(.horizontal){
                HStack(spacing: 16){
                    ForEach(nvm.news.indices, id: \.self) { news in
                        NavigationLink(destination: NewsDetailView(news:  $nvm.news[news])) {
                            NewsItemView(news: $nvm.news[news])
                        }
                    }
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    NewsPreviewView(nvm: NewsViewModel())
}
