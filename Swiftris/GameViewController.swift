//
//  GameViewController.swift
//  Swiftris
//
//  Created by Rajat Bhageria on 6/4/15.
//  Copyright (c) 2015 Rajat Bhageria. All rights reserved.
//

import UIKit
import SpriteKit


class GameViewController: UIViewController {
    var scene: GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        let skView = view as! SKView
        skView.multipleTouchEnabled = false
        
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        skView.presentScene(scene)

    }
    
    

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
