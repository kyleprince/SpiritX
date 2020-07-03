//
//  game.swift
//  Spirit Island Guide
//
//  Created by Kyle Prince on 7/2/20.
//  Copyright © 2020 Galaxxy Software. All rights reserved.
//

import Foundation

class Game {
    var currentPhase: String
    
    // Elements
    var sun: Int
    var moon: Int
    var fire: Int
    var air: Int
    var water: Int
    var earth: Int
    var plant: Int
    var animal: Int
    
    
    
    init() {
        currentPhase = "Spirit Phase"
        sun = 0
        moon = 0
        fire = 0
        air = 0
        water = 0
        earth = 0
        plant = 0
        animal = 0
    }
    
    func displayElements() {
        print("Sun: ", sun, "\n")
        print("Moon: ", moon, "\n")
        print("Fire: ", fire, "\n")
        print("Air: ", air, "\n")
        print("Water: ", water, "\n")
        print("Earth: ", earth, "\n")
        print("Plant: ", plant, "\n")
        print("Animal: ", animal, "\n")
    }
    
    func updatePhase() {
        var nextPhase = ""
        if (currentPhase == "Spirit Phase") {
            nextPhase = "Fast Power"
        }
        else if (currentPhase == "Fast Power") {
            nextPhase = "Invader Phase"
        }
        else if (currentPhase == "Invader Phase") {
            nextPhase = "Slow Power"
        }
        else if (currentPhase == "Slow Power") {
            nextPhase = "Spirit Phase"
        }
        currentPhase = nextPhase
    }
    
    func displayInstructions() -> String {
        var instructions = ""
        if (currentPhase == "Spirit Phase") {
            instructions = "Spirit Phase: Growth"
        }
        else if (currentPhase == "Fast Power") {
            instructions = "Fast Power Phase: Play Faster Power Cards and Fast Innate Powers"
        }
        else if (currentPhase == "Invader Phase") {
            instructions = "Invader Phase: \n 1. Blighted Effects \n 2. Fear Effects \n 3. Ravage \n 4. Build \n 5. Explore \n"
        }
        else if (currentPhase == "Slow Power") {
            instructions = "Slow Power Phase: Play Slow Power Cards and Slow Innate Powers"
        }
        
        return instructions
    }
    
    
    
    func updateElements() {
        print ("Update elements? (y/n)")
        var input = readLine()
        var anotherElement = true
        if (input == "y") {
            while (anotherElement == true) {
                print ("Which element?")
                var element = readLine()
                
                print("By how many?")
                if let number = readLine() {
                  if let num = Int(number) {
                      if (element == "sun") {
                          sun += num
                      }
                      else if (element == "moon") {
                          moon += num
                      }
                      else if (element == "fire") {
                          fire += num
                      }
                      else if (element == "air") {
                          air += num
                      }
                      else if (element == "water") {
                          water += num
                      }
                      else if (element == "earth") {
                          earth += num
                      }
                      else if (element == "plant") {
                          plant += num
                      }
                      else if (element == "animal") {
                          animal += num
                      }
                  }
                }
                print("Another element? (y/n)")
                input = readLine()
                if (input == "n") { anotherElement = false }
            }
        }
    }
}
