import 'dart:developer';

import 'package:comparer/comparer.dart';

void print(dynamic message) {
  log(message.toString());
}

void main() {
  final TestOne one = TestOne(
    1,
    '2',
    <Object>[3, '4', 5.5],
    <String, Object>{'6': 6, '7': '7', '8': 8.8},
  );
  final TestOne two = TestOne(
    1,
    '2',
    <Object>[3, '4', 5.5],
    <String, Object>{'6': 6, '7': '7', '8': 8.8},
  );
  print(one);
  print(one == two);
  print(one.hashCode == two.hashCode);
}

class TestOne extends ComparerList {
  TestOne(this.v1, this.v2, this.v3, this.v4);

  final int v1;
  final String v2;
  final List<Object> v3;
  final Map<String, Object> v4;

  @override
  List<Object> get equals => <Object>[v1, v2, v3, v4];
}