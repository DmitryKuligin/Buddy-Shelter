//
//  ProfileView.swift
//  Buddy Shelter
//
//  Created by Дмитрий Кулигин on 20.02.2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            Color("Background")
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20.0) {
                Image("Icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120.0, height: 120.0)
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("RedColor"))
                        .frame(width: 140, height: 40)
                        .cornerRadius(6.0)
                    
                    Text("Профиль")
                        .font(.custom("Montserrat", size: 24))
                        .foregroundColor(.white)
                }
                
                Spacer().frame(height: 10.0)
                
                ZStack{
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 120, height: 120)
                        .cornerRadius(60.0)
                }
                
                Spacer().frame(height: 10.0)
                
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("RedColor"))
                        .frame(width: 320, height: 40)
                        .cornerRadius(8.0)
                    HStack{
                        Text("Общее")
                            .font(.custom("Montserrat", size: 24))
                            .foregroundColor(.white)
                            .frame(width: 280, height: 40, alignment: .leading)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                    }
                    
                }
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("RedColor"))
                        .frame(width: 320, height: 40)
                        .cornerRadius(8.0)
                    HStack{
                        Text("Основное")
                            .font(.custom("Montserrat", size: 24))
                            .foregroundColor(.white)
                            .frame(width: 280, height: 40, alignment: .leading)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                    }
                    
                }
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("RedColor"))
                        .frame(width: 320, height: 40)
                        .cornerRadius(8.0)
                    HStack{
                        Text("Связаться с нами")
                            .font(.custom("Montserrat", size: 24))
                            .foregroundColor(.white)
                            .frame(width: 280, height: 40, alignment: .leading)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                    }
                    
                }
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("RedColor"))
                        .frame(width: 320, height: 40)
                        .cornerRadius(8.0)
                    HStack{
                        Text("О нас")
                            .font(.custom("Montserrat", size: 24))
                            .foregroundColor(.white)
                            .frame(width: 280, height: 40, alignment: .leading)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                    }
                    
                }
                
                Spacer()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
