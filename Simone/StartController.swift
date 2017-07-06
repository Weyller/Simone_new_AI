//
//  ViewController.swift
//  Simone
//
//  Created by eleves on 2017-06-12.
//  Copyright © 2017 eleves. All rights reserved.
//

import UIKit

class StartController: UIViewController {

    
    @IBOutlet weak var highScoreLabel: UILabel!
    
    
    //=======================================
    override func viewDidLoad() {
        super.viewDidLoad()
        //---------------
        highScoreLabel.text = "HIGHSCORE : \(SingletonShared.SingletonSharedInstance.highScore)"
        //------------------
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

