import SpriteKit

@MainActor
final class Spawner {

    let parentScene: SKScene

    init(parentScene: SKScene) {
        self.parentScene = parentScene
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addLabel() {
        let node = SKLabelNode(text: "Hello, World!")
        node.alpha = 0
        parentScene.addChild(node)
        node.run(.repeatForever(.sequence([.fadeIn(withDuration: 0.5), .fadeOut(withDuration: 0.5)])))
    }
}
