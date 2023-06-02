//
//  LandingView.swift
//  QuizGame
//
//  Created by Capgemini-DA184 on 6/1/23.
//

import SwiftUI

struct LandingView: View {
    @State private var isLogInViewPresented = false
    
    var body: some View {
        ZStack() {
            Image("landing")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            
            VStack(spacing: 5) {
                Text("Quizard")
                    .font(.system(size: 50, weight: .heavy, design: .rounded))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.blue)
                
                Text("1000+ app to challanges you and your friends on all topics!")
                    .font(.system(size: 18, weight: .semibold, design: .rounded))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.blue)
                    .frame(width: 250)
            }.offset(y: -(UIScreen.main.bounds.size.height / 2.8))
            

                Button(action: {
                      print("Play again Tapped")
                    isLogInViewPresented.toggle()
                }) {
                    Text("Start Playing")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width / 2, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding([.bottom], 40)
                        .fullScreenCover(isPresented: $isLogInViewPresented, content: LoginView.init)

                }.frame(height: UIScreen.main.bounds.height - 100, alignment: .bottom)
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
