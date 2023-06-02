//
//  LoginHeaderView.swift
//  QuizGame
//
//  Created by Capgemini-DA184 on 6/1/23.
//

import SwiftUI

struct LoginHeaderView: View {
    var body: some View {
        ZStack {
            Image("loginHeader")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.size.height / 4, alignment: .top)
            
            VStack(spacing: 5) {
                Text("Sign up now")
                    .font(.system(size: 35, weight: .heavy, design: .rounded))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Text("Join Quizard and invite friends")
                    .font(.system(size: 16, weight: .semibold, design: .rounded))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    //.frame(width: 250)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct LoginHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoginHeaderView()
    }
}
