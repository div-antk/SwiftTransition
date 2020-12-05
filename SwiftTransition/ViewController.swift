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
  var face = "(´・ω・｀)"
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    

  }

  @IBAction func plus(_ sender: Any) {
    
    count = count + 1
    label.text = String(count)


    if count == 10 {
      count = 0
      
      let nextVC = storyboard?.instantiateViewController(identifier: "next") as! NextViewController
      navigationController?.pushViewController(nextVC, animated: true)
      
      nextVC.nextFace = face
//      performSegue(withIdentifier: "next", sender: nil)
    }
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    let nextVC = segue.destination as! NextViewController
    nextVC.nextFace = face
  }
}

