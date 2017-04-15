//
//  GameScene.swift
//  Space
//
//  Created by Henryk on 26.02.2017.
//  Copyright © 2017 Grzegorz Tłuszcz Team. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate{
    
    //MARK: GLOBALS
    var Starfield:SKEmitterNode!
    var Player: Spaceship!
    let cameraNode = SKCameraNode()
    var globalseed = GKARC4RandomSource()
    var joystickone = Joystick()
    var joysticktwo = Joystick()
    var fingerone = [UITouch]()
    var fingertwo = [UITouch]()
    
    //Groups
    var allsprites = [Any]()
    var chunks = [Chunk]()
    var planets = [Planet]()
    var minefields = [Minefield]()
    var mines = [Mine]()
    var asteroids = [Asteroid]()
    var asteroidfields = [AsteroidField]()
    
    //MARK: - INIT
    
    override init(size: CGSize) {
        super.init(size: size)
        
        Player = Spaceship(scene: self, size: size)
        print(globalseed)
        
        //creating chunks
        for i in 0...1{
            for j in 0...1{
                let chunk = Chunk(scene: self, gridx: CGFloat(i), gridy: CGFloat(j), viewsize: size, seed: globalseed.seed)
                chunks.append(chunk)
            }
        }
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - SETUP
    
    func setup(){
        //add player on screen
        self.addChild(Player)
        
        //set star background
        Starfield = SKEmitterNode(fileNamed: "Starfield")
        Starfield.zPosition = -1
        let followPlayer = SKConstraint.distance(SKRange(constantValue: 0), to: self.Player)
        Starfield.constraints = [followPlayer]
        self.addChild(Starfield)
        
        
        //set physics world
        self.physicsWorld.contactDelegate = self
        self.physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        
        
        
        //setting coordinate system
        let anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.anchorPoint = anchorPoint
        
        //setting camera
        cameraNode.constraints = [followPlayer]
        self.addChild(cameraNode)
        self.camera = cameraNode
        
        //add chunks on screen
        for chunk in chunks{
            self.addChild(chunk)
        }

    }
    
    override func didMove(to view: SKView) {
        

    }
    
    //MARK: - TOUCHES
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            if joystickone.inParentHierarchy(self) == false{
                print("joystick 1 enabled")
                joystickone = Joystick(scene: self, radius: 40, position: touch.location(in: self.camera!))
                fingerone.insert(touch, at: 0)
                self.cameraNode.addChild(joystickone)
            }
            else if joystickone.inParentHierarchy(self) == true && joysticktwo.inParentHierarchy(self) == false{
                print("joystick 2 enabled")
                joysticktwo = Joystick(scene: self, radius: 40, position: touch.location(in: self.camera!))
            
                fingertwo.insert(touch, at: 0)
                self.cameraNode.addChild(joysticktwo)
            }
        }
        print("touch")
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            if !fingerone.isEmpty{
                if touch == fingerone[0]{
                    fingerone[0] = touch
                }
            }
            if !fingertwo.isEmpty{
                if touch == fingertwo[0]{
                    fingertwo[0] = touch
                
                }
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            if !fingerone.isEmpty{
                if touch == fingerone[0]{
                    joystickone.removeAllChildren()
                    joystickone.removeFromParent()
                    fingerone.remove(at: 0)
                    print("joystick 1 disabled")
                }
            }
            if !fingertwo.isEmpty{
                if touch == fingertwo[0]{
                    joysticktwo.removeAllChildren()
                    joysticktwo.removeFromParent()
                    fingertwo.remove(at: 0)
                    print("joystick 2 disabled")
                }
            }
        }
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            if !fingerone.isEmpty{
                if touch == fingerone[0]{
                    joystickone.removeAllChildren()
                    joystickone.removeFromParent()
                    fingerone.remove(at: 0)
                    print("joystick 1 disabled")
                }
            }
            if !fingertwo.isEmpty{
                if touch == fingertwo[0]{
                    joysticktwo.removeAllChildren()
                    joysticktwo.removeFromParent()
                    fingertwo.remove(at: 0)
                    print("joystick 2 disabled")
                }
            }
        }
    }
    
    //MARK: - CONTACT
    
    func didBegin(_ contact: SKPhysicsContact) {
        let collision = contact.bodyA.categoryBitMask | contact.bodyB.categoryBitMask

        // Handle Spaceship collision with Bombfield
        if collision == PhysicsCategory.Minefield | PhysicsCategory.Player{
            contactPlayerBombfield(contact: contact)
        }
        
        // Handle Spaceship collision with Bombfield
        if collision == PhysicsCategory.Mine | PhysicsCategory.Player{
            contactPlayerMine(contact: contact)
        }

    }
    
    //Contact: Spaceship - Minefield
    func contactPlayerBombfield(contact: SKPhysicsContact){
        if contact.bodyA.categoryBitMask == PhysicsCategory.Player && contact.bodyB.categoryBitMask == PhysicsCategory.Minefield{
            let bombfield = contact.bodyB.node as! Minefield
            print(" <*> minefield approached")
            bombfield.activate()
            let mine = bombfield.bomb!
            mine.activated = true
            
        }
        if contact.bodyA.categoryBitMask == PhysicsCategory.Minefield && contact.bodyB.categoryBitMask == PhysicsCategory.Player{
            let bombfield = contact.bodyB.node as! Minefield
            print(" <*> minefield approached")
            bombfield.activate()
            let mine = bombfield.bomb!
            mine.activated = true
            
        }
    }
    
    //Contact: Spaceship - Mine
    func contactPlayerMine(contact: SKPhysicsContact){
        if contact.bodyA.categoryBitMask == PhysicsCategory.Player && contact.bodyB.categoryBitMask == PhysicsCategory.Mine{
            print(" <*> prepare for hit")
            let mine = contact.bodyB.node as! Mine
            mine.explode()
        }
        if contact.bodyA.categoryBitMask == PhysicsCategory.Mine && contact.bodyB.categoryBitMask == PhysicsCategory.Player{
            print(" <*> prepare for hit")
            let mine = contact.bodyA.node as! Mine
            mine.explode()
        }
    }

    
    //MARK: - UPDATE
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        handlejoysticks()
        allnodesupdate()
        updateChunks()

    }
    
    func handlejoysticks(){
        if !fingerone.isEmpty && !fingertwo.isEmpty{
            Player.moveToTouchLocation(touch: fingerone[0], joystick: joystickone, joysticktwo: joysticktwo)
            Player.roatetotouch(touch: fingertwo[0], joystick: joysticktwo)
        }
        else if !fingerone.isEmpty && fingertwo.isEmpty{
            Player.moveToTouchLocation(touch: fingerone[0], joystick: joystickone)
            Player.roatetotouch(touch: fingerone[0], joystick: joystickone)
        }
        else if fingerone.isEmpty && !fingertwo.isEmpty {
            Player.roatetotouch(touch: fingertwo[0], joystick: joysticktwo)
            Player.slowdown()
        }
        else if fingerone.isEmpty && fingertwo.isEmpty {
            Player.slowdown()
        }
    }
    
    func updateChunks(){

        for chunk in chunks{
            var gridx = chunk.gridPos.x
            var gridy = chunk.gridPos.y
            let lastposx = gridx
            let lastposy = gridy
            
            // Chunk movement to symulate infinite world
            if Player.position.x - chunk.position.x > 1 * chunk.size.width {
                gridx += 2
            }
            else if Player.position.x - chunk.position.x < -1 * chunk.size.width {
                gridx += -2
            }
            if Player.position.y - chunk.position.y > 1 * chunk.size.height {
                gridy += 2
            }
            else if Player.position.y - chunk.position.y < -1 * chunk.size.height {
                gridy += -2
            }
            if lastposx != gridx || lastposy != gridy {
                deletechunk(target: chunk)
                chunk.moveTo(gridx: gridx, gridy: gridy)
                chunk.addobjects(seed: globalseed.seed)
                print(asteroids.count)
            }
            
            
        }
        
    }
    func allnodesupdate(){
        for chunk in self.chunks{chunk.update()}
        for planet in self.planets{planet.update()}
        for minefield in self.minefields{minefield.update()}
        for mine in self.mines{mine.update()}
        for asteroidfield in self.asteroidfields{asteroidfield.update()}
        for asteroid in self.asteroids{asteroid.update()}
        
        
    }
    
    func deletechunk(target: SKNode){
        for child in target.children{
            deletechunk(target: child)
            child.removeFromParent()
        }
        switch target {
        case let somePlanet as Planet:
            let index = planets.index(of: somePlanet)
            if (index != nil){
                    planets.remove(at: index!)
            }
        case let someAsteroid as Asteroid:
            let index = asteroids.index(of: someAsteroid)
            if (index != nil){
                asteroids.remove(at: index!)
            }
        case let someAsteroidField as AsteroidField:
            let index = asteroidfields.index(of: someAsteroidField)
            if (index != nil){
                asteroidfields.remove(at: index!)
            }
        case let someMine as Mine:
            let index = mines.index(of: someMine)
            if (index != nil){
                mines.remove(at: index!)
            }
        case let someMineField as Minefield:
            let index = minefields.index(of: someMineField)
            if (index != nil){
                minefields.remove(at: index!)
            }
        default: break
        }
        
    }
    
}












