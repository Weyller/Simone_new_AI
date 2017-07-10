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
    
    //--------------------------------------
    @IBAction func goToWebPage(_ sender: UIButton) {
        if let url = NSURL(string: "http://www.mariogeneau.com"){
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
        }
        
        
    }
    
    //=======================================
    override func viewDidLoad() {
        super.viewDidLoad()
        let savedScore = SingletonShared.SingletonSharedInstance.savedHighscore.object(forKey: "score")!
        highScoreLabel.text = "HIGHSCORE : \(String(describing: savedScore))"

        //------------------
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //---------------------------------------
    @IBAction func resetHighscore(_ sender: UIButton) {
        
        highScoreLabel.text = "HIGHSCORE : 0"
        SingletonShared.SingletonSharedInstance.resetHighscore()
    }
    

}

