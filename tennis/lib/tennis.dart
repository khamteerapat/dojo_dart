class Tennis {
  var _playerA = 0;
  var _playerB = 0;
  

  void playerAwinBall() {
    _playerA = 1;
  }

  getScore() {
    if (_playerA == _playerB && _playerA==1) {
      return "Fifteen : Fifteen";
    }
    if (_playerA == 0) {
      return "Love : Love";
    } else {
      return "Fifteen : Love";
    }
  }

  void playerBwinBall() {
    _playerB = 1;
  }
}
