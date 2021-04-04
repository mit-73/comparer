import 'package:test/test.dart';

import 'package:comparer/comparer.dart';

void main() {
  test('Base test', () {
    final TestZero one = TestZero(
      1,
      '2',
      <Object>[3, '4', 5.5],
      <String, Object>{'6': 6, '7': '7', '8': 8.8},
    );
    final TestZero two = TestZero(
      1,
      '2',
      <Object>[3, '4', 5.5],
      <String, Object>{'6': 6, '7': '7', '8': 8.8},
    );

    expect(one == two, false);
    expect(one.hashCode == two.hashCode, false);
  });

  test('ComparerList test', () {
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

    expect(one == two, true);
    expect(one.hashCode == two.hashCode, true);
  });

  test('ComparerMap test', () {
    final TestTwo one = TestTwo(
      1,
      '2',
      <Object>[3, '4', 5.5],
      <String, Object>{'6': 6, '7': '7', '8': 8.8},
    );
    final TestTwo two = TestTwo(
      1,
      '2',
      <Object>[3, '4', 5.5],
      <String, Object>{'6': 6, '7': '7', '8': 8.8},
    );

    expect(one == two, true);
    expect(one.hashCode == two.hashCode, true);
  });
}

class TestZero {
  TestZero(this.v1, this.v2, this.v3, this.v4);

  final int v1;
  final String v2;
  final List<Object> v3;
  final Map<String, Object> v4;
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

class TestTwo extends ComparerMap {
  TestTwo(this.v1, this.v2, this.v3, this.v4);

  final int v1;
  final String v2;
  final List<Object> v3;
  final Map<String, Object> v4;

  @override
  Map<String, Object> get equals => <String, Object>{
        'v1': v1,
        'v2': v2,
        'v3': v3,
        'v4': v4,
      };
}
