import GameplayKit
import SpriteKit


class Player:GameObject{

    
    init() {
        super.init(imageString: "plane", initalScale: 2)
        start()
        reset()
    }
    
    override func start() {
        zPosition = 1
        verticalSpeed = 0.5
    }
    
    override func update() {
        checkBounds()
    }
    
    override func checkBounds() {

        
        if(position.x <= -255){
            position.x = -255
        }
        
        if(position.x >= 255){
            position.x = 255
        }
        
    }
    
    override func reset() {
        position.y = -495
    }
    
    func touchesMove(point:CGPoint) {
        position.x = point.x
        
    }
    

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
