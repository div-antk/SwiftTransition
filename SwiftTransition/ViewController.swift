//
//  ViewController.swift
//  SwiftTransition
//
//  Created by Takuya Ando on 2020/12/05.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var label: UILabel!
  
  var count = 0
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    

  }

  @IBAction func plus(_ sender: Any) {
    
    count = count + 1
    label.text = String(count)

    
    
    if count == 10 {
      count = 0
      performSegue(withIdentifier: "next", sender: nil)
    }
  }
  
}

