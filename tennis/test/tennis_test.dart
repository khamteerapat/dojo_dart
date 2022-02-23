import 'package:tennis/tennis.dart';
import 'package:test/test.dart';

void main() {
  test('Start game both player should be score Love', () {
    // Arrange
    var expectedScore = "Love : Love";

    //Action
    var game = Tennis();
    var actualScore = game.getScore();

    //Assert
    expect(actualScore, expectedScore);
  });
  test('Player A win first ball should be Player A score fifteen', () {
    // Arrange
    var expectedScore = "Fifteen : Love";

    //Action
    var game = Tennis();
    game.playerAwinBall();
    var actualScore = game.getScore();

    //Assert
    expect(actualScore, expectedScore);
  });
}
