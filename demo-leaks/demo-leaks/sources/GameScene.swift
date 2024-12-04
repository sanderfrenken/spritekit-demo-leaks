import SpriteKit

class GameScene: SKScene {

    override func didMove(to view: SKView) {
        backgroundColor = .darkGray
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        addButtons()
    }

    private func addButtons() {
        addButton(buttonName: .leakSelf, position: CGPoint(x: 0, y: 250), scene: self)
        addButton(buttonName: .leakProperty, position: CGPoint(x: 0, y: 150), scene: self)
        addButton(buttonName: .soundEffect, position: CGPoint(x: 0, y: 50), scene: self)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        guard let view = self.view else { return }
        let sceneSize = view.frame.size
        if let touch = touches.first {
            let nodeNameTouched = self.atPoint(touch.location(in: self)).name ?? ""
            if nodeNameTouched == ButtonName.leakSelf.rawValue {
                view.presentScene(DemoSelfInClosureScene(size: sceneSize), transition: getDefaultTransition())
            } else if nodeNameTouched == ButtonName.leakProperty.rawValue {
                view.presentScene(DemoSelfInPropertyScene(size: sceneSize), transition: getDefaultTransition())
            } else if nodeNameTouched == ButtonName.soundEffect.rawValue {
                view.presentScene(DemoPlaySoundEffectScene(size: sceneSize), transition: getDefaultTransition())
            }
        }
    }
}
