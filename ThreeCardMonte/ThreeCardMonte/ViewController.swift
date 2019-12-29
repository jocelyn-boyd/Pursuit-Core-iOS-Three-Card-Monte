//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var userMessage: UILabel!
   @IBOutlet weak var rightCard: UIButton!
   @IBOutlet weak var middleCard: UIButton!
   @IBOutlet weak var leftCard: UIButton!
  

  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  //created three buttons, tagged them and connected to the function 'gamePlay'
  @IBAction func gamePlay(_ sender: UIButton) {
    
    //Randomly generate the winning number 
    let number = Int.random(in: 1...3)
    let winningCard = number
    
    switch sender.tag {
    case winningCard:
      sender.setImage(UIImage(named: "kingCard"), for: .normal)
      
      rightCard.isEnabled = false
      middleCard.isEnabled = false
      leftCard.isEnabled = false
      
      userMessage.text = "Congrats! You've won!"
      print(number)
      
    default:
      sender.setImage(UIImage(named: "threeCard"), for: .normal)
      
      rightCard.isEnabled = false
      middleCard.isEnabled = false
      leftCard.isEnabled = false
      
      userMessage.text = "Better luck next time! Try again."
      print(number)
    }
  }
  
 //After a user clicks on a button, disable all buttons until the new game button is pressed. Reset the text to an introductory message.
  @IBAction func resetButton(_ sender: UIButton) {
    rightCard.isEnabled = true
    middleCard.isEnabled = true
    leftCard.isEnabled = true
    userMessage.text = "Choose Your Card"
    
    rightCard.setImage(UIImage(named: "cardBackRed"), for: .normal)
    middleCard.setImage(UIImage(named: "cardBackRed"), for: .normal)
    leftCard.setImage(UIImage(named: "cardBackRed"), for: .normal)
  }
  
  

}

