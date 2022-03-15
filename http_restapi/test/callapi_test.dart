import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_restapi/post.dart';
import 'package:test/test.dart';

void main() {
  test('เรียก api แล้วรีเทิร์น 200', () async {
    var expectedResponse = 200;
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

    var response = await http.get(url);
    expect(response.statusCode, expectedResponse);
  });

  test('เรียก api แล้วรีเทิร์น response', () async {
    var expectedResponse =
        'sunt aut facere repellat provident occaecati excepturi optio reprehenderit';
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

    var response = await http.get(url);
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    var checkResult = decodedResponse['title'];
    expect(checkResult, expectedResponse);
  });

  test('เรียก api แล้วรีเทิร์น post object', () async {
    var expectedResponse =
        'sunt aut facere repellat provident occaecati excepturi optio reprehenderit';
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

    var response = await http.get(url);
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;

    expect(decodedResponse, expectedResponse);
  }, skip: "skip");
}
