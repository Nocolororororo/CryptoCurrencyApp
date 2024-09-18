//
//  NewsDetailView.swift
//  CryptoCurrency
//
//  Created by Cheuk Hei So on 15/9/2024.
//

import SwiftUI

struct NewsDetailView: View {
    
    @Binding var news: NewsModel
    
    
    var body: some View {
        ScrollView{
            VStack{
           
                    VStack(alignment: .leading) {
                        HStack{
                            Text(news.name)
                                .font(.largeTitle).fontWeight(.bold)
                                .foregroundColor(.primary)
                            Spacer()
                      
                        }
                        .padding(.bottom, 20)
                        
                        Text("Upload on \(news.date)")
                            .padding(.bottom, 20)
                        
                        Text(news.description)
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
  
                
            }
        }
        .padding(.horizontal, 32)
        .background(
        Image("bgImage")
            .resizable()
            .ignoresSafeArea())
    }
}
struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let nvm = NewsViewModel()
        NewsDetailView(news: .constant(nvm.news[0]))
    }
}
