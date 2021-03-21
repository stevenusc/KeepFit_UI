//
//  DashboardView.swift
//
//
//
//

import SwiftUI

struct DashboardView: View {
    @State var selectedView = 1
    var body: some View {
        TabView {
            Text("Profile")
                .padding()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
                .tag(1)
            
            Text("Exercise")
                .padding()
                .tabItem {
                    Image(systemName: "bolt.circle.fill")
                    Text("Exercise")
                }
                .tag(2)
            Text("Exercise")
                .padding()
                .tabItem {
                    Image(systemName: "icloud.and.arrow.up.fill")
                    Text("Upload")
                }
                .tag(3)
            Text("Exercise")
                .padding()
                .tabItem {
                    Image(systemName: "magnifyingglass.circle.fill")
                    Text("Search")
                }
                .tag(4)
            Text("Exercise")
                .padding()
                .tabItem {
                    Image(systemName: "5.circle")
                    Text("Categories")
                }
                .tag(5)
                .navigationBarBackButtonHidden(true)
            
        }
    }
}











/*
struct DashboardView: View {
    
    @ObservedObject var viewRouter = ViewRouter()
    
    var body: some View {
        ZStack {
            Color(.systemGray5)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            GeometryReader { geometry in
                VStack
                {
                    Spacer()
                    if self.viewRouter.currentView == "profile"
                    {
                        Text("Profile")
                    } else if self.viewRouter.currentView == "exercise"
                    {
                        Text("Exercise")
                    } else if self.viewRouter.currentView == "upload"
                    {
                        Text("Upload")
                    } else if self.viewRouter.currentView == "search"
                    {
                        Text("Search")
                    } else if self.viewRouter.currentView == "categories"
                    {
                        Text("Categories")
                    }
                    Spacer()
                    HStack
                    {
                        Image("profile").frame(width: 50, height: 50)
                            
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                            .frame(width: geometry.size.width/6, height: 90)
                            .onTapGesture {
                                self.viewRouter.currentView = "profile"
                            }
                        Image("exercise")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                            .frame(width: geometry.size.width/6, height: 90)
                            .onTapGesture {
                                self.viewRouter.currentView = "exercise"
                            }
                        Image("upload")
                            .resizable()
                            .frame(width: 50, height: 46)
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                            .frame(width: geometry.size.width/6, height: 90)
                            .onTapGesture {
                                self.viewRouter.currentView = "upload"
                            }
                        Image("search")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                            .frame(width: geometry.size.width/6, height: 90)
                            .onTapGesture {
                                self.viewRouter.currentView = "search"
                            }
                        Image("categories")
                            .resizable()
                            .frame(width: 50, height: 46)
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                            .frame(width: geometry.size.width/6, height: 90)
                            .onTapGesture {
                                self.viewRouter.currentView = "categories"
                            }
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height/10)
                    .background(Color(.white))
                }
                
            }.edgesIgnoringSafeArea(.bottom)
            .navigationBarBackButtonHidden(true)
            
                
        }
    }
}
 */
struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
