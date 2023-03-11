//
//  Data_StructuresApp.swift
//  Data Structures
//
//  Created by Hamza Hashmi on 31/12/2022.
//

import SwiftUI

@main
struct Data_StructuresApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
            NavigationView {
                MainView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
            }
        }
    }
}
