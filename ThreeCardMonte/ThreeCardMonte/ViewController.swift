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
      rightCard.isEnabled = false
      middleCard.isEnabled = false
      leftCard.isEnabled = false
      print("You win!")
      print(winningNumber)
      print(sender.tag)
    } else {
      rightCard.isEnabled = false
      middleCard.isEnabled = false
      leftCard.isEnabled = false
      print("Try Again!")
      print(winningNumber)
      print(sender.tag)
    }
  }
  
 //After a user clicks on a button, disable all buttons until the new game button is pressed. Reset the text to an introductory message.
  @IBAction func resetButton(_ sender: UIButton) {
    rightCard.isEnabled = true
    middleCard.isEnabled = true
    leftCard.isEnabled = true
  }
  
  

}

