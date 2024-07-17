import Testing

final class Instantiate {
    var text = "A"
    
    @Test func test1() {
        text += "B"
        #expect(text == "AB")
    }
    
    @Test func test2() {
        text += "C"
        #expect(text == "AC")
    }
}
