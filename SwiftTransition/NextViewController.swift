//
//  NextViewController.swift
//  SwiftTransition
//
//  Created by Takuya Ando on 2020/12/05.
//

import UIKit

class NextViewController: UIViewController {

  @IBOutlet weak var label2: UILabel!
  
  var count2 = 0
  
  
  override func viewDidLoad() {
        super.viewDidLoad()

      label2.text = String(count2)
    }
    
  @IBAction func back(_ sender: Any) {
    
    dismiss(animated: true, completion: nil)
  }
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
