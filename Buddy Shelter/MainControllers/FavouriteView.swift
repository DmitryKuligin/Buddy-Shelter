//
//  FavouriteView.swift
//  Buddy Shelter
//
//  Created by Дмитрий Кулигин on 20.02.2022.
//

import SwiftUI

struct FavouriteView: View {
    
    func StringToAge(age : Int) -> String {
        if age%10 == 1 {
            return "\(age) год"
        } else if (age % 10 == 2 || age % 10 == 3 || age % 10 == 4){
            return "\(age) года"
        } else {
            return "\(age) лет"
        }
    }
    
    
    var body: some View {
        ZStack{
            Color("Background")
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20.0){
                HStack(spacing: 20.0){
                    Image("Icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100.0, height: 100.0)
                    
                    Text("Избранное")
                        .font(.custom("Montserrat", size: 28))
                        .foregroundColor(Color("RedColor"))
                }
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(PetData){ pet in
                        HStack(spacing: 20.0){
                            Image(pet.photo)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 160, height: 120)
                            
                            VStack(spacing: 10.0){
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(Color("RedColor"))
                                        .frame(width: 160, height: 30)
                                        .cornerRadius(6.0)
                                    Text("\(pet.name)  \(StringToAge(age: pet.age))")
                                        .foregroundColor(.white)
                                        .font(.custom("Montserrat", size: 18.0))
                                }
                                
                                Text("\(pet.description)")
                                
                                Text("\(pet.number)")
                                    .fontWeight(.bold)
                            }
                        }
                        .frame(width: 350.0, height: 140)
                    }
                }
            }
        }
    }
}

struct FavouriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteView()
    }
}
