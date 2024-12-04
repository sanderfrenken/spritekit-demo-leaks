import SpriteKit

class DemoSelfInClosureScene: BaseScene {

    let label = SKLabelNode(text: "Hello world")


    override func didMove(to view: SKView) {
        super.didMove(to: view)

        addCircles()

        label.alpha = 0
        label.fontSize = 30
        addChild(label)

        let actions: [SKAction] = [
            .run {
                self.printHello()
            },
            .wait(forDuration: 1)
        ]
        run(.repeatForever(.sequence(actions)))
    }

    private func printHello() {
        label.alpha = 0
        label.run(.fadeIn(withDuration: 0.5))
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
}
