//
//  MainView.swift
//  Buddy Shelter
//
//  Created by Дмитрий Кулигин on 20.02.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            FeedView()
                .tabItem {
                    Image(systemName: "square.on.square")
                    Text("Лента")
                }
            FavouriteView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Избранное")
                }
            PartnersView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Партнеры")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Профиль")
                }
        }
        
        
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12")
    }
}
