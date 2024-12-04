import SpriteKit

class DemoPlaySoundEffectScene: BaseScene {

    let soundNode = SKNode()

    private var audioActions = [SKAction]()

    override func didMove(to view: SKView) {
        super.didMove(to: view)
        for index in 1...8 {
            audioActions.append(.playSoundFileNamed("steelHitSteelLight\(index)", waitForCompletion: false))
        }
        addChild(soundNode)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        guard let audioAction = audioActions.randomElement() else { return }
        soundNode.run(audioAction)
    }
}
