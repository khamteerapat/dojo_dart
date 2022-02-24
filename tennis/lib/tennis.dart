class Tennis {
  var _playerA = 0;
  var _playerB = 0;
  final _listScore = ['Love', 'Fifteen', 'Thirty', 'Fourty'];

  get score {
    return '${_listScore[_playerA]} : ${_listScore[_playerB]}';
  }

  void playerAwinBall() {
    _playerA++;
  }

  void playerBwinBall() {
    _playerB++;
  }
}
