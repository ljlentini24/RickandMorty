//
//  RMData.swift
//  Final_Project-LukeLentini
//
//  Created by Luke Lentini24 on 5/24/23.
//

import Foundation

struct Origin: Decodable{
    var name: String
}

//Tried to mimic struct name as close as possibel to the name they used in the API file in order to create a viable identifier name
struct Location: Decodable{
    var name: String
}

struct Results: Decodable, Identifiable{
    // Variable meets swift naming convention as it is simple no capitalized letter for the first group and follows camel case conventions
    var id: Int
    // Variable meets swift naming convention as it is simple no capitalized letter for the first group and follows camel case conventions
    var name: String
    // Variable meets swift naming convention as it is simple no capitalized letter for the first group and follows camel case conventions
    var status: String
    // Variable meets swift naming convention as it is simple no capitalized letter for the first group and follows camel case conventions
    var species: String
    // Variable meets swift naming convention as it is simple no capitalized letter for the first group and follows camel case conventions
    var gender: String
    // Variable meets swift naming convention as it is simple no capitalized letter for the first group and follows camel case conventions
    var image: String
    // Variable meets swift naming convention as it is simple no capitalized letter for the first group and follows camel case conventions
    var origin: Origin
    // Variable meets swift naming convention as it is simple no capitalized letter for the first group and follows camel case conventions
    var location: Location
}

//Named the struct RickandMortyData as a viable identifier name because it is the basis of the file which provides data on Rick and Morty characters
struct RickandMortyData: Decodable{
    var results: [Results]
}
