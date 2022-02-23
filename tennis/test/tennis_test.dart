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

  test(
      'Player B and Player A get one ball should be Player A and Player B score fifteen',
      () {
    // Arrange
    var expectedScore = "Fifteen : Fifteen";

    //Action
    var game = Tennis();
    game.playerBwinBall();
    game.playerAwinBall();
    var actualScore = game.getScore();

    //Assert
    expect(actualScore, expectedScore);
  });
  test(
      'Player A win two ball and Player B win one ball score should be Thirty : Fifteen',
      () {
    // Arrange
    var expectedScore = "Thirty : Fifteen";

    //Action
    var game = Tennis();
    game.playerBwinBall();
    game.playerAwinBall();
    game.playerAwinBall();
    var actualScore = game.getScore();

    //Assert
    expect(actualScore, expectedScore);
  });
}
