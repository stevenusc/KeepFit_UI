//
//  DashboardView.swift
//
//
//
//

import SwiftUI

struct DashboardView: View
{
    @State var selectedView = 1
    var body: some View
    {
        TabView
        {
            ProfileView()
                .padding()
                .tabItem
                {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
                .tag(1)
            Text("Exercise")
                .padding()
                .tabItem
                {
                    Image(systemName: "bolt.circle.fill")
                    Text("Exercise")
                }
                .tag(2)
            
            UploadView()
                .padding()
                .tabItem
                {
                    Image(systemName: "icloud.and.arrow.up.fill")
                    Text("Upload")
                }
                .tag(3)
            Text("Search")
                .padding()
                .tabItem
                {
                    Image(systemName: "magnifyingglass.circle.fill")
                    Text("Search")
                }
                .tag(4)
            Text("Categories")
                .padding()
                .tabItem
                {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Categories")
                }
                .tag(5)
            
        }.navigationBarBackButtonHidden(true).navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
}



struct ProfileView: View
{
    var body: some View
    {
        NavigationView{
            ZStack
            {
                VStack
                {
                    Image("profile_pic")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200.0, height: 700.0, alignment: .top)
                }
                .navigationBarItems(trailing: NavigationLink(destination: Profile())
                {
                    Text("Edit Profile")
                })
                VStack
                {
                    Text("Username")
                        .foregroundColor(.black)
                        .font(.system(size:20))
                        .multilineTextAlignment(.center)
                        .offset(y: -160)
                }
                VStack
                {
                    Text("Vitals")
                        .foregroundColor(.black)
                        .font(.system(size:26))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .offset(y: -60)
                }
                
                VStack
                {
                    Text("Age: ")
                        .foregroundColor(.black)
                        .font(.system(size:18))
                        .multilineTextAlignment(.center)
                        .offset(y: -10)
                }
                
                VStack
                {
                    Text("Weight: ")
                        .foregroundColor(.black)
                        .font(.system(size:18))
                        .multilineTextAlignment(.center)
                        .offset(y: 20)
                }
                
                VStack
                {
                    Text("Height: ")
                        .foregroundColor(.black)
                        .font(.system(size:18))
                        .multilineTextAlignment(.center)
                        .offset(y: 50)
                }
                
                VStack
                {
                    Text("Liked Videos: ")
                        .foregroundColor(.black)
                        .font(.system(size:18))
                        .multilineTextAlignment(.leading)
                        .offset(y: 100)
                }
                
                VStack
                {
                    Text("The Perfect blah blah blah blah blah blah")
                        .foregroundColor(.black)
                        .frame(width: 350.0, height: 700.0, alignment: .leading)
                        .font(.system(size:18))
                        .offset(y: 140)
                }
                
                VStack
                {
                    Text("The Other Perfect blah blah blah blah blah blah")
                        .foregroundColor(.black)
                        .frame(width: 350.0, height: 700.0, alignment: .leading)
                        .font(.system(size:18))
                        .offset(y: 180)
                }
            
            /*.navigationBarItems(trailing: NavigationLink(destination: Profile())
            {
                Text("Edit Profile")
            })*/
        }
        }.navigationBarBackButtonHidden(true).navigationBarTitle("")
        .navigationBarHidden(true)
    }
    
}

struct UploadView: View
{
    var body: some View
    {
        NavigationView
        {
            ZStack
            {
                VStack{
                        Spacer()
                        NavigationLink(destination: Upload())
                        {
                            let live = Text("GO LIVE")
                                .foregroundColor(.black)
                                .padding(50)
                            live.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                
                        }
                        Spacer()
                        NavigationLink(destination: Upload())
                        {
                            let upload = Text("UPLOAD")
                                .foregroundColor(.black)
                                .padding(50)
                            upload.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        }
                        Spacer()
                    }
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
