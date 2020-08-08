//
//  GameScene.swift
//  P3Sprite
//
//  Created by Pat Winchell on 8/8/20.
//  Copyright © 2020 SuperPartyAwesome. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private let testSprite: SKSpriteNode = {
        let sprite = SKSpriteNode(imageNamed: "Webkit-logo-P3")
        sprite.size = CGSize(width: 100, height: 100)
        return sprite
    }()
    
    override func didMove(to view: SKView) {
        self.size = view.bounds.size
        self.backgroundColor = .black
        
        if testSprite.parent != self {
            testSprite.removeFromParent()
            addChild(testSprite)
        }
        testSprite.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
    }
}
