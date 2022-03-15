import 'package:http/http.dart' as http;
import 'package:test/test.dart';

void main(){
  test(
      'เรียก api แล้วรีเทิร์น 200',
          () async {
        var expectedResponse = 200;
        var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

        var response = await http.get(url);
        expect(response.statusCode,expectedResponse);
      });
}