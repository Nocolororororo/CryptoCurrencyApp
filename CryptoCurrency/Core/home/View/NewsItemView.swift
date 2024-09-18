//
//  NewsItemView.swift
//  CryptoCurrency
//
//  Created by Cheuk Hei So on 15/9/2024.
//

        import SwiftUI

        struct NewsItemView: View {
            @Binding var news: NewsModel
            
            var body: some View {
                HStack{
                    
                    VStack(alignment: .leading, spacing: 4){              Text("\(news.name)")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 100, height: 100)
                        
                        Text("\(news.date)")
                            .font(.subheadline)
                    }
                }
                .frame(width: 250, height: 170)
                .overlay{
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color(.gray), lineWidth: 2)
                        .background(Image(self.news.image)
                            .resizable()
                            .opacity(0.2))
                }
                
            }
        }
            struct newsitemView_Previews: PreviewProvider {
                static var previews: some View {
                    let nvm = NewsViewModel()
                    NewsItemView(news: .constant(nvm.news[0]))
                }
            }


