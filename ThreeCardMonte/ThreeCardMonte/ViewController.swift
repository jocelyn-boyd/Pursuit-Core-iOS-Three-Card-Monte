//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  @IBOutlet weak var userMessage: UILabel!
  @IBOutlet weak var rightCard: UIButton!
  @IBOutlet weak var middleCard: UIButton!
  @IBOutlet weak var leftCard: UIButton!
  
  
  //craeated three buttons, tagged them and connected to the function 'gamePlay'
  @IBAction func gamePlay(_ sender: UIButton) {
    
//Make the winning button be randomly selected. Each game should have a randomly generated winning card.
    let winningNumber = Int.random(in: 1...3)
    if sender.tag == winningNumber {
      sender.setImage(UIImage(named: "kingCard"), for: .normal)
      rightCard.isEnabled = false
      middleCard.isEnabled = false
      leftCard.isEnabled = false
      userMessage.text = "Congrats! You win!"
//      print(winningNumber)
//      print(sender.tag)
    } else {
      let arrayOfButtons = [rightCard,middleCard,leftCard]
      for loserCard in arrayOfButtons {
        if loserCard!.tag == winningNumber {
          loserCard?.setImage(UIImage(named: "kingCard"), for: .normal)
          print("here")
        }
      }
      sender.setImage(UIImage(named: "threeCard"), for: .normal)
      print(winningNumber)
      print(sender.tag)
      
      
      
//      if winningNumber == leftCard.tag {
//        leftCard.setImage(UIImage(named: "kingCard"), for: .normal)
//        print("True")
//      } else if winningNumber == middleCard.tag {
//        middleCard.setImage(UIImage(named: "kingCard"), for: .normal)
//        print("True")
//      } else if winningNumber == rightCard.tag {
//        rightCard.setImage(UIImage(named: "kingCard"), for: .normal)
//        print("True")
//      }
      
      rightCard.isEnabled = false
      middleCard.isEnabled = false
      leftCard.isEnabled = false
      userMessage.text = "Better luck next time! Try again!"
    }
  }
  
 //After a user clicks on a button, disable all buttons until the new game button is pressed. Reset the text to an introductory message.
  @IBAction func resetButton(_ sender: UIButton) {
    rightCard.isEnabled = true
    middleCard.isEnabled = true
    leftCard.isEnabled = true
    userMessage.text = "Choose another card!"
    
    rightCard.setImage(UIImage(named: "cardBackRed"), for: .normal)
    middleCard.setImage(UIImage(named: "cardBackRed"), for: .normal)
    leftCard.setImage(UIImage(named: "cardBackRed"), for: .normal)
  }
  
  

}

