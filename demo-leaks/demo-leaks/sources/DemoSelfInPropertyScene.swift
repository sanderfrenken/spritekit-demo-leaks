import SpriteKit

class DemoSelfInPropertyScene: BaseScene {

    var spawner: Spawner?

    override func didMove(to view: SKView) {
        super.didMove(to: view)

        addCircles()
        
        spawner = Spawner(parentScene: self)
        guard let spawner else { return }
        spawner.addLabel()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)

    }
}
