class Tennis {
  var _playerA = 0;
  var _playerB = 0;
  static const _listScore = [
    'Love',
    'Fifteen',
    'Thirty',
    'Fourty',
    'Player A Win'
  ];
  static const _topScore = 4;
  get score {
    if (_playerA >= _topScore) {
      return "Player A Win";
    }
    return '${_listScore[_playerA]} : ${_listScore[_playerB]}';
  }

  void playerAwinBall() {
    _playerA++;
  }

  void playerBwinBall() {
    _playerB++;
  }
}
