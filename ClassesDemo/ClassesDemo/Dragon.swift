
class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech: String) {
        print("Says: \(speech)")
    }
    
    override func move() {
        print("Fly forwards -> {}")
    }
    
    override func attack() {
        super.attack()
        print("Spits the fire deals 10 damage")
    }
}
