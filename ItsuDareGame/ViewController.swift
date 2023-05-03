//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by Haruto Hamano on 2023/05/03.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel:UILabel!
    
    @IBOutlet var resetButton: UIButton!
    @IBOutlet var changeButton: UIButton!
    @IBOutlet var randomButton: UIButton!
    
    let itsuArray: [String] = ["3年前","今朝", "昨晩", "おととい"]
    let dokodeArray: [String] = ["家で","大学で", "トイレで", "電車で"]
    let daregaArray: [String] = ["僕が","友達が", "教授が", "メッシが"]
    let doshitaArray: [String] = ["漏らした","こけた", "寝た", "勉強した"]
    
    var index = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetButton.layer.cornerRadius = 35
        changeButton.layer.cornerRadius = 35
        randomButton.layer.cornerRadius = 35
        
        itsuLabel.layer.cornerRadius = 12
        dokodeLabel.layer.cornerRadius = 12
        daregaLabel.layer.cornerRadius = 12
        doshitaLabel.layer.cornerRadius = 12
        
        itsuLabel.clipsToBounds = true
        dokodeLabel.clipsToBounds = true
        daregaLabel.clipsToBounds = true
        doshitaLabel.clipsToBounds = true
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(){
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        if index == 3{
            index = 0
        } else {
            index += 1
        }
    }
    
    @IBAction func reset(){
        itsuLabel.text = "----"
        dokodeLabel.text = "----"
        daregaLabel.text = "----"
        doshitaLabel.text = "----"
        
        index = 0
    }
    
    @IBAction func random(){
        let itsuIndex = Int.random(in: 0...3)
        let dokodeIndex = Int.random(in: 0...3)
        let daregaIndex = Int.random(in: 0...3)
        let doshitaIndex = Int.random(in: 0...3)
        
        print("いつ: \(itsuIndex)")
        print("どこで: \(dokodeIndex)")
        print("だれが: \(daregaIndex)")
        print("どうした: \(doshitaIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
    }


}

