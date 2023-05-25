//
//  DataManager.swift
//  Final_Project-LukeLentini
//
//  Created by Luke Lentini24 on 5/24/23.
//

import Foundation


class DataManager: ObservableObject{
    //store the Rick and Morty data
    //Named it RMDCharacters as the variable explains what we are pulling from the Rick and Morty Data
    @Published var rMCharacters: RickandMortyData?
    
    
    func fetchRickandMorty(){

            guard let url = URL(string: "https://rickandmortyapi.com/api/character") else { return }

            // create a URLSession to grab the data
        // get data from url seeson
            URLSession.shared.dataTask(with: url) { (data, _, _) in
                // create a swift decoder object - its job is to translate the JSON to structs
                let decoder = JSONDecoder()
    
                let decodedRM = try! decoder.decode(RickandMortyData.self, from: data!)

                //set the value of my currentWeather variable to whatever was dowloaded from the API
                    DispatchQueue.main.async {
                        self.rMCharacters = decodedRM
                
            }
        }.resume()
    }
}




