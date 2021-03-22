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
            
        }.navigationBarBackButtonHidden(true)
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

struct ProfileView: View
{
    var body: some View
    {
        NavigationView
        {
            
            ZStack
            {
                VStack
                {
                    Image("profile_pic")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .offset(y: -240)
                }
                .navigationBarItems(trailing: NavigationLink(destination: Profile())
                {
                    Text("Edit Profile")
                })
                
            }
            .navigationBarItems(trailing: NavigationLink(destination: Profile())
            {
                Text("Edit Profile")
            })
        }
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
