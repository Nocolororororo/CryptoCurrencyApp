//
//  MianPageView.swift
//  CryptoCurrency
//
//  Created by Cheuk Hei So on 11/9/2024.
//

import SwiftUI

struct MianPageView: View {
    @State private var showSplash = true
    var body: some View {
        ZStack{
            if showSplash{
                SplashView()
                    .transition(.opacity)
                    .animation(.easeOut (duration: 1.5))
            }
            else{
                TabView{
                    HomeView()
                        .tabItem { Image(systemName: "bitcoinsign.circle.fill")
                            Text("Home")}
                    
                    NewsView()
                        .tabItem { Image(systemName: "doc.plaintext.fill")
                            Text("News")}
                }
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3)
            {
                withAnimation{
                    self.showSplash = false
                }
            }
        }
    }
}

#Preview {
    MianPageView()
}
