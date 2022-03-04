import 'package:test/test.dart';
import 'package:payment/payment.dart';

void main() {
  test('รับยอดสุทธิ 1117.00 ตรวจสอบยอดสุทธิ เท่ากับ 1117.00', () {
    var expectedNetAmount = 1117;

    //Action
    var payment = Payment();
    payment.initAmount(1117.00);
    var actualNetAmount = payment.netAmount;

    //Assert
    expect(actualNetAmount, expectedNetAmount);
  });

  test('รับยอดสุทธิ 100.00 ตรวจสอบยอดสุทธิ เท่ากับ 100.00', () {
    double expectedNetAmount = 100.00;

    //Action
    var payment = Payment();
    payment.initAmount(100.00);
    double actualNetAmount = payment.netAmount;

    //Assert
    expect(actualNetAmount, expectedNetAmount);
  });

  test(
      'รับยอดสุทธิ 1117.00 แล้วกดปุ่ม banknotes 1000.00 บาท แล้วยอดคงเหลือ 117.00 บาท',
      () {
    var remainingAmount = 117;

    //Action
    var payment = Payment();
    payment.initAmount(1117.00);
    payment.pay(1000.00);
    var actualRemainingAmount = payment.remainingAmount;

    //Assert
    expect(actualRemainingAmount, remainingAmount);
  });

  test(
      'รับยอดสุทธิ 1117.00 แล้วกดปุ่ม banknotes 100.00 บาท แล้วยอดคงเหลือ 1017.00 บาท',
      () {
    var remainingAmount = 1017;

    //Action
    var payment = Payment();
    payment.initAmount(1117.00);
    payment.pay(100.00);
    var actualRemainingAmount = payment.remainingAmount;

    //Assert
    expect(actualRemainingAmount, remainingAmount);
  });

  test(
      'รับยอดสุทธิ 1117.00 แล้วกดปุ่ม banknotes 100.00 บาทสองครั้ง แล้วยอดคงเหลือ 917.00 บาท',
      () {
    var remainingAmount = 917;

    //Action
    var payment = Payment();
    payment.initAmount(1117.00);
    payment.pay(100.00);
    payment.pay(100.00);
    var actualRemainingAmount = payment.remainingAmount;

    //Assert
    expect(actualRemainingAmount, remainingAmount);
  });

  test(
      'รับยอดสุทธิ 1117.00 แล้วกดปุ่ม banknotes 100.00 บาทสามครั้ง banknotes 500.00 บาทหนึ่งครั้ง แล้วยอดคงเหลือ 317.00 บาท',
      () {
    var remainingAmount = 317;

    //Action
    var payment = Payment();
    payment.initAmount(1117.00);
    payment.pay(100.00);
    payment.pay(100.00);
    payment.pay(100.00);
    payment.pay(500.00);
    var actualRemainingAmount = payment.remainingAmount;

    //Assert
    expect(actualRemainingAmount, remainingAmount);
  });

  test(
      'รับยอดสุทธิ 1117.00 แล้วกดปุ่ม banknotes 100.00 บาทสามครั้ง banknotes 500.00 บาทหนึ่งครั้ง เเล้วยอดสุทธิยังคงเป็น 1117.00 บาท',
      () {
    var netAmount = 1117;

    //Action
    var payment = Payment();
    payment.initAmount(1117.00);
    payment.pay(100.00);
    payment.pay(100.00);
    payment.pay(100.00);
    payment.pay(500.00);
    double actualNetAmount = payment.netAmount;

    //Assert
    expect(actualNetAmount, netAmount);
  });

  test(
      'รับยอดสุทธิ 1117.00 แล้วกดปุ่มตัวเลขเงิน ครั้งที่ 1 กดเลข 9,0 แล้วกดชำระเงินแล้วยอดคงเหลือ 1027.00 บาท',
          () {
        var remainingAmount = 1027;

        //Action
        var payment = Payment();
        payment.initAmount(1117.00);
        payment.inputNumber('9');
        payment.inputNumber('0');
        payment.payFromInput();
        var actualRemainingAmount = payment.remainingAmount;

        //Assert
        expect(actualRemainingAmount, remainingAmount);
      });

  test(
      'รับยอดสุทธิ 1117.00 แล้วกดปุ่มตัวเลขเงิน ครั้งที่ 1 กดเลข 9,0 แล้วกดชำระเงิน ครั้งที่ 2 กดเลข 5,0,0 แล้วกดชำระเงินแล้วยอดคงเหลือ 527.00 บาท',
          () {
        var remainingAmount = 527;

        //Action
        var payment = Payment();
        payment.initAmount(1117.00);
        payment.inputNumber('9');
        payment.inputNumber('0');
        payment.payFromInput();
        payment.inputNumber('5');
        payment.inputNumber('0');
        payment.inputNumber('0');
        payment.payFromInput();
        var actualRemainingAmount = payment.remainingAmount;

        //Assert
        expect(actualRemainingAmount, remainingAmount);
      });

}

/**
 * คำนวณการชำระเงิน
 * 
 * 1. รับยอดสุทธิ
 * 2. ตรวจสอบยอดสุทธิ
 * จำนวนเงินที่คย์เข้าไป
 * 3.1. กดปุ่ม banknotes
 * 3.2. กดตัวเลขจำนวนเงินแล้วกดชำระเงิน
 */