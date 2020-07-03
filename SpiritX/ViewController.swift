//
//  ViewController.swift
//  SpiritX
//
//  Created by Kyle Prince on 7/3/20.
//  Copyright © 2020 Galaxxy Software. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    // Element numbers and buttons to increase them
    @IBOutlet weak var sunNumber: NSTextField!
    @IBAction func sunButton(_ sender: Any) {
        sunNumber.intValue += 1
    }
    
    @IBOutlet weak var moonNumber: NSTextField!
    @IBAction func moonButton(_ sender: Any) {
        moonNumber.intValue += 1
    }
    
    @IBOutlet weak var fireNumber: NSTextField!
    @IBAction func fireButton(_ sender: Any) {
        fireNumber.intValue += 1
    }
    
    @IBOutlet weak var airNumber: NSTextField!
    @IBAction func airButton(_ sender: Any) {
        airNumber.intValue += 1
    }
    
    @IBOutlet weak var waterNumber: NSTextField!
    @IBAction func waterButton(_ sender: Any) {
        waterNumber.intValue += 1
    }
    
    @IBOutlet weak var earthNumber: NSTextField!
    @IBAction func earthButton(_ sender: Any) {
        earthNumber.intValue += 1
    }
    
    @IBOutlet weak var plantNumber: NSTextField!
    @IBAction func plantButton(_ sender: Any) {
        plantNumber.intValue += 1
    }
    
    @IBOutlet weak var animalNumber: NSTextField!
    @IBAction func animalButton(_ sender: Any) {
        animalNumber.intValue += 1
    }
    
    // Phase Descriptions
    @IBOutlet weak var phase: NSTextField!
    @IBOutlet weak var phaseDesc: NSTextField!
    @IBAction func phaseButton(_ sender: Any) {
        
        // Set phase title
        var nextPhase = ""
        if (phase.stringValue == "Spirit Phase") {
            nextPhase = "Fast Power"
        }
        else if (phase.stringValue == "Fast Power") {
            nextPhase = "Invader Phase"
        }
        else if (phase.stringValue == "Invader Phase") {
            nextPhase = "Slow Power"
        }
        else if (phase.stringValue == "Slow Power") {
            nextPhase = "Spirit Phase"
        }
        phase.stringValue = nextPhase
        
        // Set phase description
        var instructions = ""
        if (phase.stringValue == "Spirit Phase") {
            instructions = "Growth"
        }
        else if (phase.stringValue == "Fast Power") {
            instructions = "Play Fast Power Cards and Fast Innate Powers"
        }
        else if (phase.stringValue == "Invader Phase") {
            instructions = "1. Blighted Effects \n 2. Fear Effects \n 3. Ravage \n 4. Build \n 5. Explore"
        }
        else if (phase.stringValue == "Slow Power") {
            instructions = "Play Slow Power Cards and Slow Innate Powers"
        }
        phaseDesc.stringValue = instructions
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

