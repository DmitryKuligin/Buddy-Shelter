//
//  Buddy_ShelterApp.swift
//  Buddy Shelter
//
//  Created by Дмитрий Кулигин on 17.02.2022.
//

import SwiftUI


//Define var for changing view
class AppState: ObservableObject {
    @Published var hasOnborded: Bool
    
    init(hasOnborded: Bool) {
        self.hasOnborded = hasOnborded
    }
}

class DidLoaded: ObservableObject {
    @Published var hasLoaded: Bool
    
    init(hasLoaded: Bool) {
        self.hasLoaded = hasLoaded
    }
}

@main
struct Buddy_ShelterApp: App {
    @ObservedObject var appstate = AppState(hasOnborded: false)
    @ObservedObject var didloaded = DidLoaded(hasLoaded: false)
    
    var body: some Scene {
        WindowGroup {
            if didloaded.hasLoaded {
                if appstate.hasOnborded {
                    MainView()
                        .environmentObject(appstate)
                } else {
                    AuthView()
                        .environmentObject(appstate)
                }
                
            } else {
                LoadingView()
                    .environmentObject(didloaded)
            }
        }
    }
}
