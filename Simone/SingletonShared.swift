//
//  SingletonShared.swift
//  Simone
//
//  Created by Local Admin on 2017-07-03.
//  Copyright © 2017 eleves. All rights reserved.
//

import Foundation

class SingletonShared{
    
    
    //var highScore: String!
    var scoreForWrongInterface: String!
    var savedHighscore = UserDefaults.standard
    static let SingletonSharedInstance = SingletonShared()
    //----------------------------------------------------
    
    init() {
       
        saveDefaultIfNeeded()
        // manageScore()
    }

    //--------------------------------------------
    func saveDefaultIfNeeded()
    {
        if savedHighscore.object(forKey: "score") == nil{
            savedHighscore.setValue("0", forKey: "score")
        }
    }
    
    //---------------------------------------------------
//    func manageScore(){
//        
//        if let hs = savedHighscore.object(forKey: "score")
//        {
//            highScore = String(describing: hs)
//        }
//        else {
//            savedHighscore.set("0", forKey: "score")
//        }
//    }
    
    //--------------------------------------------------
    func saveScore(_ aScore: String)
    {
        let a = Int(aScore)
        let b = savedHighscore.object(forKey: "score") as? String
        let c = Int(b!)
        if a! > c! {
            savedHighscore.setValue(aScore, forKey: "score")
        }
        
    }
    //-----------------------------------------------
    func resetHighscore()
    {
        savedHighscore.removeObject(forKey: "score")
        saveDefaultIfNeeded()
    }
    
}
//=========================================================
