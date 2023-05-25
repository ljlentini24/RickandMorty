//
//  ContentView.swift
//  Final_Project-LukeLentini
//
//  Created by Luke Lentini24 on 5/23/23.
//

import SwiftUI


struct ContentView: View {
    @StateObject var manager = DataManager()
    var body: some View {
            VStack {
                
                //Named the variable PickleRick as RMCHaracters is already taken, "characters" is a viable indentifier name as that is what we are representing within the code
                if let characters = manager.RMCharacters {
                    List(characters.results) { result in
                        Section{
                            Text(result.name)
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.2549, green: 0.71, blue: 0.788))
                            AsyncImage(
                                // The URL of image
                                url:URL(string:result.image)!,
                                
                                //How to format it
                                content: { image in
                                    image.resizable()
                                        .frame(width:150, height: 150)
                                        .clipShape(Circle())
                                },
                                //What to show users if it takes a while for the image to load.
                                placeholder: {
                                    ProgressView()
                                }
                            )
                            Text("Status: \(result.status)")
                                .foregroundColor(Color(red: 0.2549, green: 0.71, blue: 0.788))
                                .font(.system(size: 20))
                            Text("Species: \(result.species)")
                                .foregroundColor(Color(red: 0.2549, green: 0.71, blue: 0.788))
                                .font(.system(size: 20))
                            Text("Gender: \(result.gender)")
                                .foregroundColor(Color(red: 0.2549, green: 0.71, blue: 0.788))
                                .font(.system(size: 20))
                            Text("Origin: \(result.origin.name)")
                                .foregroundColor(Color(red: 0.2549, green: 0.71, blue: 0.788))
                                .font(.system(size: 20))
                            Text("Location: \(result.location.name)")
                                .foregroundColor(Color(red: 0.2549, green: 0.71, blue: 0.788))
                                .font(.system(size: 20))
                            
                        }
                        .listRowBackground(Color(red: 0.125, green: 0.216, blue: 0.259))
                    }
                    .frame(width:400)
                    .background(Color(red: 0.749, green: 0.870, blue: 0.27))
                    .scrollContentBackground(.hidden)
                    .ignoresSafeArea()
                } else {
                    ProgressView()
                }
            }
            .ignoresSafeArea()
            .padding()
            .onAppear{manager.fetchRickandMorty()
            }
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
