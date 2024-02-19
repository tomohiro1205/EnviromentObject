//
//  EnvironmentObjectApp.swift
//  EnvironmentObject
//
//  Created by 木村朋広 on 2024/02/19.
//

import SwiftUI

@main
struct EnvironmentObjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Pet())
        }
    }
}
