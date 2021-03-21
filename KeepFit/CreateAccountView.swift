//
//  CreateAccountView.swift
//  
//
//
//

import SwiftUI

struct CreateAccountView: View
{
    
    @State var emailAddress: String = ""
    @State var password: String = ""
    @State private var birthDate = Date()
    @State var weight: String = ""
    @State var height: String = ""
    
    var dateFormatter: DateFormatter {
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            return formatter
    }
    
    
    var body: some View
    {
        ZStack
        {
            Color(.systemGray5)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
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
                Spacer()
                Text("Sign Up")
                    .foregroundColor(.black)
                    .font(.system(size:26))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .padding(.top, 15)
                VStack
                    {
                    TextField("Nickname", text:$emailAddress)
                        .frame(width: 300, height: 45)
                        .background(Color(.white))
                        .font(Font.system(size: 16))
                        .multilineTextAlignment(.center)
                        .cornerRadius(22)
                    Text("Birthdate")
                                DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                                    Text("Birthdate")
                                }
                    SecureField("Password", text:$password)
                        .frame(width: 300, height: 45)
                        .background(Color(.white))
                        .font(Font.system(size: 16))
                        .multilineTextAlignment(.center)
                        .cornerRadius(22)
                    TextField("Weight", text:$weight)
                        .frame(width: 300, height: 45)
                        .background(Color(.white))
                        .font(Font.system(size: 16))
                        .multilineTextAlignment(.center)
                        .cornerRadius(22)
                    TextField("Height", text:$height)
                        .frame(width: 300, height: 45)
                        .background(Color(.white))
                        .font(Font.system(size: 16))
                        .multilineTextAlignment(.center)
                        .cornerRadius(22)
                }.padding(.top, 30)

                NavigationLink(destination: DashboardView())
                {
                    Text("Get Fit")
                        .foregroundColor(.black)
                        .frame(width: 250, height: 45)
                        .foregroundColor(.white)
                        .background(Color(red: 102/255, green: 98/255, blue: 227/255))
                        .cornerRadius(22)
                        .font(.system(size:15))
                        .padding(.top, 50)
                        .padding(.bottom, 40)
                }
            }.labelsHidden()

        }
    }
}


struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
