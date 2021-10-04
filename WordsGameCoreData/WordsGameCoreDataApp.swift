//
//  WordsGameCoreDataApp.swift
//  WordsGameCoreData
//
//  Created by Стас Жингель on 03.10.2021.
//

import SwiftUI

@main
struct WordsGameCoreDataApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
               
        }
    }
}
