//
//  ContentView.swift
//  WarCard
//
//  Created by ArjMaster on 07/03/21.
//  Copyright © 2021 ArjMaster. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack() {
            
            Image("background")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .scaledToFill()
            
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    self.playerCard = "card" + String(playerRand)
                    self.cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand {
                        self.playerScore += playerRand
                    }else if cpuRand > playerRand{
                        self.cpuScore += cpuRand
                    }
                    
                }, label: {
                    Image("dealbutton").renderingMode(.original)
                })
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
