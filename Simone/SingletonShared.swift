//
//  SingletonShared.swift
//  Simone
//
//  Created by Local Admin on 2017-07-03.
//  Copyright © 2017 eleves. All rights reserved.
//

import Foundation

class SingletonShared{
    
    
    var highScore: String!
    var scoreForWrongInterface: String!
    var savedHighscore = UserDefaults.standard
    static let SingletonSharedInstance = SingletonShared()
    //----------------------------------------------------
    
    init() {
//        savedHighscore.removeObject(forKey: "score")
          manageScore()
    }

    //---------------------------------------------------
    func manageScore(){
        
        if let hs = savedHighscore.object(forKey: "score")
        {
            highScore = String(describing: hs)
        }
        else {
            savedHighscore.set("0", forKey: "score")
        }
    }
    
    //--------------------------------------------------
    func saveScore(_ aScore: String)
    {
        let a = aScore
        let b = highScore
        if a > b! {
            savedHighscore.set(aScore, forKey: "score")
            highScore = a
        }
        
    }
    
    
}
//=========================================================
