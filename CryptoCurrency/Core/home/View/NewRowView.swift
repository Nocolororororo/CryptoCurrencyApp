//
//  NewRowView.swift
//  CryptoCurrency
//
//  Created by Cheuk Hei So on 12/9/2024.
//

import SwiftUI

struct NewRowView: View {
    @Binding var news: NewsModel
    
    var body: some View {
        GroupBox{
            HStack{
                Image(self.news.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 130)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .padding()
                
                VStack(alignment: .leading, spacing: 4){              Text("\(news.name)")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("\(news.date)")
                        .font(.caption)
                }
            }
        }
        .fontDesign(.rounded)
        .cornerRadius(25)
        .frame(height: 100)
    }
}
    struct newsrow_Previews: PreviewProvider {
        static var previews: some View {
            let nvm = NewsViewModel()
            NewRowView(news: .constant(nvm.news[0]))
        }
    }
    

