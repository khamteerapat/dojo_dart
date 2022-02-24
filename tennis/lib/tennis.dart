class Tennis {
  var _playerA = 0;
  var _playerB = 0;
  List list = ['Love', 'Fifteen', 'Thirty'];

  void playerAwinBall() {
    ++_playerA;
  }

  void playerBwinBall() {
    ++_playerB;
  }

  getScore() {
    return '${list[_playerA]} : ${list[_playerB]}';
  }
}
