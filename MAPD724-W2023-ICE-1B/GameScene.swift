//
//  GameScene.swift
//  MAPD724-W2023-ICE-1B
//
//  Created by Vaishnavi Santhapuri on 22-01-2023.
//  Lab 1


import SpriteKit
import GameplayKit

let screenSize = UIScreen.main.bounds
var screenWidth:CGFloat?
var screenHeight:CGFloat?

class GameScene: SKScene {
    
    var ocean1:Ocean?
    var ocean2:Ocean?
    var plane:Player?
    
    override func sceneDidLoad() {
        
        screenWidth = frame.width
        screenHeight = frame.height

        name = "GAME"
        
        //add ocean
        ocean1 = Ocean()
        ocean2 = Ocean()
        ocean2?.position.y = -773
        addChild(ocean1!)
        addChild(ocean2!)

        //add plan
        plane = Player()
        addChild(plane!)


    }
    
    
    func touchDown(atPoint pos : CGPoint) {
       print("Touch Down")
        plane!.touchesMove(point: pos)

    }
    
    func touchMoved(toPoint pos : CGPoint) {
        print("Touch Moved")
        plane!.touchesMove(point: pos)

    }
    
    func touchUp(atPoint pos : CGPoint) {
        print("Touch Up")

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        ocean1?.update()
        ocean2?.update()
        plane?.update()


    }
}


