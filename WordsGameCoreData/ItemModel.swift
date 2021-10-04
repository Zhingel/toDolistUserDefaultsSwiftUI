//
//  ItemModel.swift
//  WordsGameCoreData
//
//  Created by Стас Жингель on 04.10.2021.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
