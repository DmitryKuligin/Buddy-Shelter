//
//  FeedView.swift
//  Buddy Shelter
//
//  Created by Дмитрий Кулигин on 20.02.2022.
//

import SwiftUI

struct FeedView: View {
    @State var FiltersActivate : Bool = true
    
    
    var body: some View {
        ZStack{
            Color("Background")
                .ignoresSafeArea()

            VStack{
                Spacer()
                    .frame(height: 40.0)
                HStack(alignment: .center, spacing: 80.0) {
                    Image(systemName: "arrow.counterclockwise")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 36.0, height: 36.0)
                        .foregroundColor(Color("RedColor"))
                    
                    Image("Icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 85.0, height: 85.0)
                    
                    Button {
                        FiltersActivate = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 36.0, height: 36.0)
                            .foregroundColor(Color("RedColor"))
                    }

                    
                    
                }
                
                ZStack{
                    
                    Image("Кот")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 360, height: 640)
                    
                    VStack{
                        ZStack{
                            Rectangle()
                                .opacity(0.65)
                                .foregroundColor(Color("RedColor"))
                                .frame(width: 200.0, height: 40.0)
                                .cornerRadius(10)
                                
                            Text("Гучи, 2 года")
                                .foregroundColor(.white)
                                .font(.custom("Montserrat", size: 24))
                                .frame(width: 160.0, height: 40.0)
                        }
                        
                        Spacer()
                            .frame(height: 480.0)
                        
                        HStack(alignment: .center, spacing: 25.0) {
                            ZStack{
                                Rectangle()
                                    .frame(width: 60, height: 60)
                                    .foregroundColor(.red)
                                Image(systemName: "multiply")
                                    .resizable()
                                    .frame(width: 40.0, height: 40.0)
                                    .foregroundColor(.white)
                            }
                            .cornerRadius(30)
                            
                            ZStack{
                                Rectangle()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.white)
                                Image(systemName: "info")
                                    .resizable()
                                    .frame(width: 20.0, height: 30.0)
                                    .foregroundColor(.black)
                            }
                            .cornerRadius(25)
                            
                            
                            
                            ZStack{
                                Rectangle()
                                    .frame(width: 60, height: 60)
                                    .foregroundColor(.green)
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 40.0, height: 40.0)
                                    .foregroundColor(.white)
                            }
                            .cornerRadius(30)
                        }
                    }
                        
                    
                    
                    
                }
                .frame(width: 360, height: 600)
                .cornerRadius(16)
                
                
                Spacer()
                    
                
            }
            .ignoresSafeArea()
            
            
            if (FiltersActivate == true) {
                ZStack{
                    VStack{
                        ZStack(alignment: .top) {
                            Rectangle()
                                .foregroundColor(Color("Background"))
                                .opacity(0.95)
                                .frame(width: .infinity, height: 300.0)
                                .cornerRadius(24)
                            
                            VStack{
                                Spacer().frame(height: 30.0)
                                
                                HStack(alignment: .top, spacing: 20.0){
                                    Spacer()
                                        .frame(width: 280)
                                    Button {
                                    FiltersActivate = false
                                    } label: {
                                        Image(systemName: "xmark.circle.fill")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                            .foregroundColor(.white)
                                    }
                                }
                                HStack(alignment: .center, spacing: 80){
                                    Text("Город")
                                        .foregroundColor(Color("RedColor"))
                                        .font(.custom("Montserrat", size: 24))
                                        .frame(width: 100, height: 40)
                                        .border(Color("RedColor") , width: 2)
                                        .cornerRadius(6)
                                    Text("Москва")
                                        .foregroundColor(Color("RedColor"))
                                        .font(.custom("Montserrat", size: 24))
                                        .frame(width: 100, height: 40)
                           
                                }
                                
                                
                                
                                
                            }
                            
                            
                        }
                        
                        
                        Spacer()
                        
                    }
                    
                }
                .ignoresSafeArea()
            }
        }
    }
}


struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12")
    }
}
