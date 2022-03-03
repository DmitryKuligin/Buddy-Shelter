//
//  AuthView.swift
//  Buddy Shelter
//
//  Created by Дмитрий Кулигин on 17.02.2022.
//

import SwiftUI

struct AuthView: View {
    @EnvironmentObject var appstate: AppState
    @State var AuthType: Bool = true
    @State var EnterClicked: Bool = false
    @State var email: String = ""
    @State var password: String = ""
    
    
    func changeEnterType1(){
        if AuthType == true {
            AuthType = false
        }
    }
    
    func changeEnterType2(){
        if AuthType == false {
            AuthType = true
        }
    }
    
    
    var body: some View {
        if EnterClicked {
            MainView()
        }
        ZStack{
            Color("Background")
                .ignoresSafeArea()
            VStack{
                Image("Icon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120, alignment: .center)
                
                Text("Buddy")
                    .font(.custom("Vandmelon", size: 48))
                    .foregroundColor(Color("RedColor"))
                
                Text("Shelter")
                    .font(.custom("Vandmelon", size: 54))
                    .foregroundColor(Color("RedColor"))
                
                ZStack{
                    HStack(spacing: 0){
                        if AuthType == false {
                            Color("RedColor")
                            Color.white
                        } else {
                            Color.white
                            Color("RedColor")
                        }
                        
                    }
                    HStack(alignment: .center, spacing: 0){
                        if AuthType == false {
                            Button(action: changeEnterType1) {
                                Text("Вход")
                                    .foregroundColor(.white)
                                    .font(.custom("Monserrat", size: 20))
                            }
                            .frame(width: 160.0, height: 40.0)
                            
                            Button(action: changeEnterType2) {
                                Text("Регистрация")
                                    .foregroundColor(Color("RedColor"))
                                    .font(.custom("Monserrat", size: 20))
                            }
                            .frame(width: 160.0, height: 40.0)
                        } else {
                            Button(action: changeEnterType1) {
                                Text("Вход")
                                    .foregroundColor(Color("RedColor"))
                                    .font(.custom("Monserrat", size: 20))
                            }
                            .frame(width: 160.0, height: 40.0)
                            
                            Button(action: changeEnterType2) {
                                Text("Регистрация")
                                    .foregroundColor(.white)
                                    .font(.custom("Monserrat", size: 20))
                            }
                            .frame(width: 160.0, height: 40.0)
                        }
                    }
                }
                .frame(width: 320.0, height: 40)
                .cornerRadius(18)
                
                
                Spacer()
                    .frame(height: 40.0)
                
                VStack(spacing: 20.0) {
                    TextField("E-mail", text: $email)
                    TextField("Пароль", text: $password)
                    
                    Spacer()
                        .frame(height: 10.0)
                    
                    if AuthType == false {
                        Button(action:  {
                            appstate.hasOnborded = true
                        }){
                            Text("Войти")
                                .foregroundColor(.white)
                                .font(.custom("Monserrat", size: 24))
                        }
                        .padding(.horizontal)
                        .frame(width: 160.0, height: 40.0)
                        .background(Color("RedColor"))
                        .cornerRadius(12)
                    } else {
                        Button(action: {
                            appstate.hasOnborded = true
                        }){
                            Text("Создать профиль")
                                .foregroundColor(.white)
                                .font(.custom("Monserrat", size: 24))
                        }
                        .padding(.horizontal)
                        .frame(width: 240.0, height: 40.0)
                        .background(Color("RedColor"))
                        .cornerRadius(12)
                    }
                    
                    Text("Или")
                        .font(.custom("Monserrat", size: 18))
                        .foregroundColor(Color("RedColor"))
                    
                    HStack(alignment: .center, spacing: 50.0) {
                        Image("Facebook Icon")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50.0, height: 50.0)
                        Image("Vk Icon")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50.0, height: 50.0)
                        Image("Apple Icon")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50.0, height: 50.0)
                    }
                    
                }
            }
            .textFieldStyle(OvalTextFieldStyle())
        }
    }
    
    
    
}


struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(6)
            .background(Color("RedColor"))
            .cornerRadius(20)
            .frame(width: 280)
            .foregroundColor(.white)
            .font(.custom("Monserrat", size: 24))
    }
}


struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
