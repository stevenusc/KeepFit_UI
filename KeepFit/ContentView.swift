//
//  ContentView.swift
//  Sign In/Launch Screen
//
//
//

import SwiftUI

struct ContentView: View
{
    
    @State var emailAddress: String = ""
    @State var password: String = ""
    
    var body: some View
    {
        NavigationView
        {
            ZStack
            {
                Color(.systemGray5)
                    .edgesIgnoringSafeArea(.all)
                
                //KeepFit Logo
                VStack
                {
                    Image("KeepFit_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200.0, height: 700.0, alignment: .top)
                }
                
                //Sign In
                VStack
                {
                    Text("Sign In")
                        .foregroundColor(.black)
                        .font(.system(size:26))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.top, 15)
                    TextField("Email Address", text:$emailAddress)
                        .frame(width: 300, height: 45)
                        .background(Color(.white))
                        .font(Font.system(size: 16))
                        .multilineTextAlignment(.center)
                        .cornerRadius(22)
                    SecureField("Password", text:$password)
                        .frame(width: 300, height: 45)
                        .background(Color(.white))
                        .font(Font.system(size: 16))
                        .multilineTextAlignment(.center)
                        .cornerRadius(22)
                    
                    NavigationLink(destination: DashboardView())
                    {
                        Text("Sign In")
                            .foregroundColor(.black)
                            .frame(width: 250, height: 45)
                            .foregroundColor(.white)
                            .background(Color(red: 102/255, green: 98/255, blue: 227/255))
                            .cornerRadius(22)
                            .font(.system(size:15))
                            .padding(.top, 50)
                        
                    }
                }
                VStack
                {
                    Spacer()
                    NavigationLink(destination: CreateAccountView())
                    {
                        Text("Sign Up")
                            .foregroundColor(.black)
                            .padding(.bottom, 50)
                    }
                    
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
