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