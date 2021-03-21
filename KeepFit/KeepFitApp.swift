//
//  KeepFitApp.swift
//
//
//
//

import SwiftUI

@main
struct KeepFitApp: App {
    @StateObject var viewRouter = ViewRouter()
    var body: some Scene {
        WindowGroup {
            DashboardView()
        }
    }
}
