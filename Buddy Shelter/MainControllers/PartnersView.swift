//
//  PartnersView.swift
//  Buddy Shelter
//
//  Created by Дмитрий Кулигин on 20.02.2022.
//

import SwiftUI

struct PartnersView: View {
    var body: some View {
        ZStack{
            Color("Background")
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 20.0){
                HStack(alignment: .center, spacing: 20.0) {
                    Image("Icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    Text("Наши партнеры")
                        .foregroundColor(Color("RedColor"))
                        .font(.custom("Montserrat", size: 28))
                }
                Text("Предъяви на кассе")
                    .font(.custom("Montserrat", size: 22))
                
                Image("barcode")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 240, height: 80)
                
                Text("Промокод:         NEW95")
                    .font(.custom("Montserrat", size: 22))
                
                ScrollView(.vertical, showsIndicators: false){
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 12.5)], spacing: 25.0) {
                        ForEach(PartnerData){ data in
                            HStack(alignment: .center){
                                ZStack{
                                    Color.white
                                    Button(action: {
                                        guard let google = URL(string: data.url),
                                            UIApplication.shared.canOpenURL(google) else {
                                            return
                                        }
                                        UIApplication.shared.open(google,
                                                                  options: [:],
                                                                  completionHandler: nil)
                                    }) {
                                        Image(data.photo)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 150, height: 150)
                                    }
                                    
                                }
                                .frame(width: 160, height: 160)
                                .cornerRadius(12)
                            }
                        }
                    }
                }  
            }
        }
    }
}

struct PartnersView_Previews: PreviewProvider {
    static var previews: some View {
        PartnersView()
    }
}
