//
//  ChildVC.swift
//  RaceRunner
//
//  Created by Joshua Adams on 3/1/15.
//  Copyright (c) 2015 Josh Adams. All rights reserved.
//

import UIKit

class ChildVC: UIViewController {    
  override func viewDidLoad() {
    setupSwipeGestureRecognizer()
  }
  
  override func didReceiveMemoryWarning() {
    LowMemoryHandler.handleLowMemory(self)
  }
  
  func setupSwipeGestureRecognizer() {
    let swipeGestureRecognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(ChildVC.showMenu))
    swipeGestureRecognizer.direction = UISwipeGestureRecognizerDirection.Right
    self.view.addGestureRecognizer(swipeGestureRecognizer)
  }
  
  func showMenu() {
    self.performSegueWithIdentifier("unwind pan", sender: self)
  }
  
  override func prefersStatusBarHidden() -> Bool {
    return true
  }
}
