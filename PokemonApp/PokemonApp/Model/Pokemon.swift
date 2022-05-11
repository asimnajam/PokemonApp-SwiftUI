//
//  Pokemon.swift
//  PokemonApp
//
//  Created by Admin on 11/05/2022.
//

import Foundation

class PokemonModel: Identifiable {
    var id: Int = 0
    var name: String = ""
    var weight: Int = 0
    var height: Int = 0
    var imageURL: String = ""
    var order: Int = 0
    var date: Date = Date()
    var baseExperience: Int = 0
    var type: [String] = []
    
    var formattedDateString: String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "dd/MM/yy, h:mm a"
        return formatter.string(from: date)
    }
    
    var types: String {
//        var types: [String] = []
//        type.forEach { value in
//            if let type = value.type {
//                types.append(type.name.capitalized)
//            }
//        }
        
        return type.joined(separator: ", ")
    }
    
    init(id: Int = 0, name: String = "", weight: Int = 0, height: Int = 0, imageURL: String = "", order: Int = 0, date: Date = Date(), baseExperience: Int = 0, type: [String] = []) {
        self.id = id
        self.name = name
        self.weight = weight
        self.height = height
        self.imageURL = imageURL
        self.order = order
        self.date = date
        self.baseExperience = baseExperience
        self.type = type
    }
}

extension PokemonModel {
    static var empty: PokemonModel {
        PokemonModel()
    }
}
