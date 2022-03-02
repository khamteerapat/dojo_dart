import 'package:test/test.dart';
import 'package:payment/payment.dart';

void main() {
  test('รับยอดสุทธิ 1117.00 ตรวจสอบยอดสุทธิ เท่ากับ 1117.00', () {
    var expectedNetAmount = 1117;

    //Action
    var payment = Payment();
    payment.setNetAmount(1117.00);
    var actualNetAmount = payment.getNetAmount;

    //Assert
    expect(actualNetAmount, expectedNetAmount);
  });

  test('รับยอดสุทธิ 100.00 ตรวจสอบยอดสุทธิ เท่ากับ 100.00', () {
    double expectedNetAmount = 100.00;

    //Action
    var payment = Payment();
    payment.setNetAmount(100.00);
    double actualNetAmount = payment.getNetAmount;

    //Assert
    expect(actualNetAmount, expectedNetAmount);
  });


  test('รับยอดสุทธิ 1117.00 แล้วกดปุ่ม banknotes 1000.00 บาท แล้วยอดคงเหลือ 117.00 บาท', () {
    var remainingAmount = 117;

    //Action
    var payment = Payment();
    payment.setNetAmount(1117.00);
    payment.pay(1000.00);
    var actualRemainingAmount = payment.getRemainingAmount;

    //Assert
    expect(actualRemainingAmount, remainingAmount);
  });

  test('รับยอดสุทธิ 1117.00 แล้วกดปุ่ม banknotes 100.00 บาท แล้วยอดคงเหลือ 1017.00 บาท', () {
    var remainingAmount = 1017;

    //Action
    var payment = Payment();
    payment.setNetAmount(1117.00);
    payment.pay(100.00);
    var actualRemainingAmount = payment.getRemainingAmount;

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