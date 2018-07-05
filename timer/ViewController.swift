//
//  ViewController.swift
//  timer
//
//  Created by Александр on 27.06.2018.
//  Copyright © 2018 timer. All rights reserved.
//

import Cocoa


class ViewController: NSViewController {
    
    var counter = 0.0
    var timer = Timer()
    var isPlay = false
    
    @IBOutlet weak var timerLabel: NSTextField!
    @IBOutlet weak var pauseButton: NSButton!
    @IBOutlet weak var startButton: NSButton!
    @IBOutlet weak var resetButton: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pauseButton.isEnabled = false
        resetButton.isEnabled = false
        timerLabel.stringValue = String(counter)
        pauseButton.isEnabled = true
    }


    @IBAction func startTimer(_ sender: Any) {
        if (isPlay){
            return
        }
        startButton.isEnabled = false
        pauseButton.isEnabled = true
        resetButton.isEnabled = true
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(_ sender: Any) {
        
    }
    
    @IBAction func stopTimer(_ sender: Any) {
        
    }
    
    @objc func updateTimer(){
        counter = counter + 1
        timerLabel.stringValue = String(format: "%.1f", counter)
    }
}

