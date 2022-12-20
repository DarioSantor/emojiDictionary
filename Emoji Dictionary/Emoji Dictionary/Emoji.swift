//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by Santos, Dario Ferreira on 20/12/2022.
//

import Foundation

struct Emoji {
    var character = ""
    var definition = ""
    var year = 0
    var rating = 0.0
    var category = ""
}

func getEmojis() -> [Emoji] {
    let e0 = Emoji(character: "🚓", definition: "Police Car", year: 2013, rating: 6.7, category: "Vehicles")
    let e1 = Emoji(character: "🏎", definition: "Racecar", year: 2013, rating: 4.1, category: "Vehicles")
    let e2 = Emoji(character: "⛪️", definition: "Church", year: 2010, rating: 3.8, category: "Buildings")
    let e3 = Emoji(character: "🙃", definition: "Upsidedown Smilely", year: 2017, rating: 3.7, category: "Faces")
    let e4 = Emoji(character: "🌯", definition: "Burrito", year: 2020, rating: 2.8, category: "Food")
    let e5 = Emoji(character: "🚑", definition: "Ambulance", year: 2018, rating: 3.5, category: "Vehicles")
    return [e0, e1, e2, e3, e4, e5]
}
