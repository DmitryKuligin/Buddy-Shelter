//
//  ContentView.swift
//  Buddy Shelter
//
//  Created by Дмитрий Кулигин on 17.02.2022.
//

import SwiftUI

struct LoadingView: View {
    @EnvironmentObject var didloaded: DidLoaded

    
    // Function to make delay
    private func delayText() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            didloaded.hasLoaded = true
            }
        }
    
    var body: some View {
        ZStack{
            Color("Background")
                .ignoresSafeArea()
            VStack{
                Image("Icon")
                    .resizable()
                    .scaledToFit()
                
                Spacer()
                    .frame(height: 50)
                
                Text("Buddy")
                    .font(.custom("Vandmelon", size: 54))
                    .foregroundColor(Color("RedColor"))
                
                Text("Shelter")
                    .font(.custom("Vandmelon", size: 54))
                    .foregroundColor(Color("RedColor"))
                    
            }
        }
        .onAppear(perform: delayText)
        
        
    }
    
}


struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
            .previewDevice("iPhone 12")
    }
}
