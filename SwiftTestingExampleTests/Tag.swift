import Testing

// タグの定義
extension Tag {
    @Tag static var tagA: Self
    @Tag static var tagB: Self
}

struct TagTests {
    // 個別にタグを指定する時は @Test 内に記述
    @Test(.tags(.tagA)) func formatTest() {}
    
    // スイートに指定するとスイート内のテストメソッドすべてにタグが適用される
    @Suite(.tags(.tagA))
    struct SubTagTests {
        // tagA
        @Test func subTest1() {}
        // tagA
        @Test func subTest2() {}
        // tagA, tagB
        @Test(.tags(.tagB)) func subTest3() {}
    }
}
