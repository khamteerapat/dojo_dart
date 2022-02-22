import 'package:tennis/tennis.dart';
import 'package:test/test.dart';

void main() {
  test('Start game both player should be score Love', () {
    // Arrange
    var expectedScore = "Love : Love";

    //Action
    var game = Tennis();
    var actualScore = game.start();

    //Assert

    expect(actualScore, expectedScore);
  });
}
