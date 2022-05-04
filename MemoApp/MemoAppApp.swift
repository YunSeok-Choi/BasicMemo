//
//  MemoAppApp.swift
//  MemoApp
//
//  Created by 최윤석 on 2022/04/27.
//

import SwiftUI

@main
struct MemoAppApp: App {
    
    @StateObject var store = MemoStore()
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
