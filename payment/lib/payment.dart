class Payment {
  var _netAmount = 0.0;
  var _remainingAmount = 0.0;
  var _numpadInput = '';

  get netAmount => _netAmount;
  get remainingAmount => _remainingAmount;

  get display => null;

  void pay(double amount) {
    _remainingAmount = _remainingAmount - amount;
  }

  void initAmount(double netAmount) {
    _netAmount = netAmount;
    _remainingAmount = _netAmount;
  }

  void inputNumber(String number) {
    _numpadInput += number;
  }

  void payFromInput() {
    var amount = double.parse(_numpadInput);
    _numpadInput = '';
    pay(amount);
  }
}
