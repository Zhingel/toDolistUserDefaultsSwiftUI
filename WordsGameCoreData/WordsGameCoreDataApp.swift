//
//  WordsGameCoreDataApp.swift
//  WordsGameCoreData
//
//  Created by Стас Жингель on 03.10.2021.
//

import SwiftUI

@main
struct WordsGameCoreDataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
