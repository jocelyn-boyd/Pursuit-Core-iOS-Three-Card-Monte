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
  
  @IBAction func gamePlay(_ sender: UIButton) {
    
    let winningNumber = Int.random(in: 1...3)
    if sender.tag == winningNumber {
      print("You win!")
      print(winningNumber)
      print(sender.tag)
    } else {
      print("Try Again!")
      print(winningNumber)
      print(sender.tag)
    }
  }
  

}

