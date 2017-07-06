//
//  WrongController.swift
//  Simone
//
//  Created by Local Admin on 2017-07-03.
//  Copyright © 2017 eleves. All rights reserved.
//

import UIKit

class WrongController: UIViewController {

    //--------------------
    
   // var simoneBrain: SimonBrain!
    
    @IBOutlet weak var scoreLabel: UILabel!
   
    
    //--------------------
    override func viewDidLoad() {
        super.viewDidLoad()

       
      //  scoreLabel.text = "SCORE : \(simoneBrain.scoreKeeperCounter!)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
