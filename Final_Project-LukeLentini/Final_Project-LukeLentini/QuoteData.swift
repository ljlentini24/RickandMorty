//
//  QuoteData.swift
//  Final_Project-LukeLentini
//
//  Created by Luke Lentini24 on 5/23/23.
//

import Foundation

/*
 q = quote text
 a = author name
 c = character count
 h = pre-formatted HTML quote
 */
struct Main: Decodable{
    var q: String
    var a: String
    var c: Int
}

struct QuoteData: Decodable {
    var main: [Main]
}
