import 'package:test/test.dart';
import '../bin/tennis.dart';

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
