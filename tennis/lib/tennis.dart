class Tennis {
  var playerA = 0;
  String start() {
    return "Love : Love";
  }

  void playerAwinBall() {
    playerA = 1;
  }

  getScore() {
    if (playerA == 0) {
      return "Love : Love";
    } else {
      return "Fifteen : Love";
    }
  }

  void playerBwinBall() {}
}
