//
//  LoginView.swift
//  QuizGame
//
//  Created by Capgemini-DA184 on 6/1/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        
        
        VStack() {
            LoginHeaderView()
            
            VStack {
                
                VStack {
                    
                    HStack {
                        Text("Email")
                            .foregroundColor(Color.black.opacity(0.7))
                            .padding([.top, .bottom], 15)
                            .padding(.leading, 18)
                        Spacer()
                    }
                    
                    //MARK: Email TextField
                    TextField(" winner@email.com", text: $email, onEditingChanged: { (isChanged) in
                        
                        
                    })
                    
                    .frame(width: UIScreen.main.bounds.width - 40, height: 40)
                    .multilineTextAlignment(.leading)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray, lineWidth: 0.5)
                    )
                    
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .padding(.vertical, -10)
                    
                    
                    HStack {
                        Text("Username")
                            .foregroundColor(Color.black.opacity(0.7))
                            .padding([.top, .bottom], 15)
                            .padding(.leading, 18)
                        Spacer()
                    }
                    
                    //MARK: Email TextField
                    TextField(" Rookie123", text: $username, onEditingChanged: { (isChanged) in
                        
                        
                    })
                    
                    .frame(width: UIScreen.main.bounds.width - 50, height: 40, alignment: .topLeading)
                    .multilineTextAlignment(.leading)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray, lineWidth: 0.5)
                    )
                    .keyboardType(.default)
                    .autocapitalization(.none)
                    .padding(.vertical, -10)
                    
                    
                    HStack {
                        Text("Password")
                            .foregroundColor(Color.black.opacity(0.7))
                            .padding([.top, .bottom], 15)
                            .padding(.leading, 18)
                        Spacer()
                    }
                    
                    //MARK: Password TextField
                    SecureField(" *************", text: $password)
                        .frame(width: UIScreen.main.bounds.width - 50, height: 40)
                        .multilineTextAlignment(.leading)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 0.5)
                        )
                        .padding(.vertical, -10)
                }
                
                
                HStack(spacing: 15) {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 3) - 25, height: 1)
                        .foregroundColor(Color.gray.opacity(0.2))
                    
                    
                    Text("or Sign up with")
                        .foregroundColor(Color.gray.opacity(0.8))
                        .font(.system(size: 14, weight: .regular, design: .default))
                        .multilineTextAlignment(.center)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 3) - 25, height: 1)
                        .foregroundColor(Color.gray.opacity(0.2))
                }.padding([.top, .bottom], 30)
                    .frame(width: UIScreen.main.bounds.width - 40)
                
                HStack(spacing: 10) {
                    
                    Button(action: {
                        print("button pressed")
                        
                    }) {
                        Image("google")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20, alignment: .center)
                    }.frame(width: 100, height: 40)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.gray, lineWidth: 0.5)
                            
                        )
                    
                    
                    Button(action: {
                        print("button pressed")
                        
                    }) {
                        Image("facebook")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20, alignment: .center)
                    } .frame(width: 100, height: 40)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.gray, lineWidth: 0.5)
                        )
                    
                    Button(action: {
                        print("button pressed")
                        
                    }) {
                        Image("twitter")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20, alignment: .center)
                    } .frame(width: 100, height: 40)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.gray, lineWidth: 0.5)
                        )
                }.padding(.bottom, 30)
                    .frame(width: UIScreen.main.bounds.width - 40)
                
                //MARK: Log in Button Action
                Button(action: {
                    print("Login Button Tapped")
                }) {
                    Text("Sign up")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 40, height: 50)
                        .background(Color("loginButtonColor"))
                        .cornerRadius(10)
                        .padding([.bottom], 20)
                    
                }
                
            }.frame(width: UIScreen.main.bounds.size.width, height: (UIScreen.main.bounds.height - UIScreen.main.bounds.size.height / 4))
                .background(Color.white
                    .clipShape(CustomCorners(cornors: [.topLeft, .topRight], radius: 20))
                    .shadow(color: Color.gray.opacity(0.3), radius: 4.0, x: 0, y: 0)
                    .mask(Rectangle().padding(.top, -20))
                )
                .offset(y: -35)
        }
        
    }
}

struct CustomCorners: Shape {
    var cornors: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: cornors, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
