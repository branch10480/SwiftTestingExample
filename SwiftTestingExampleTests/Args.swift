import Foundation
import Testing

struct ArgsTests {
    
    enum Color {
        case red
        case yellow
        case green
    }
    
    enum Fruit {
        case apple
        case lemon
        case kiwi
    }
    
    class ColorProvider {
        static func color(of fruit: Fruit) -> Color {
            switch fruit {
            case .apple: .red
            case .lemon: .red
            case .kiwi: .green
            }
        }
    }
    
    @Test("ColorProvider Test", arguments: [
        Fruit.apple,
        Fruit.lemon,
        Fruit.kiwi
    ])
    func test(fruit: Fruit) {
        let color = ColorProvider.color(of: fruit)
        let expectedColor: Color = switch fruit {
        case .apple: .red
        case .lemon: .yellow
        case .kiwi: .green
        }
        #expect(color == expectedColor)
    }
}
