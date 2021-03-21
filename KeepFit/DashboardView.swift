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
            Text("Profile")
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
            Text("Exercise")
                .padding()
                .tabItem
                {
                    Image(systemName: "icloud.and.arrow.up.fill")
                    Text("Upload")
                }
                .tag(3)
            Text("Exercise")
                .padding()
                .tabItem
                {
                    Image(systemName: "magnifyingglass.circle.fill")
                    Text("Search")
                }
                .tag(4)
            Text("Exercise")
                .padding()
                .tabItem
                {
                    Image(systemName: "5.circle")
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
