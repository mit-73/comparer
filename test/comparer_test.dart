import 'package:test/test.dart';

import 'package:comparer/comparer.dart';

void main() {
  test('Base test', () {
    final TestBase one = TestBase(
      1,
      '2',
      <Object>[3, '4', 5.5],
      <String, Object>{'6': 6, '7': '7', '8': 8.8},
    );
    final TestBase two = TestBase(
      1,
      '2',
      <Object>[3, '4', 5.5],
      <String, Object>{'6': 6, '7': '7', '8': 8.8},
    );

    expect(one == two, false);
    expect(one.hashCode == two.hashCode, false);
  });

  test('ComparerList test', () {
    final TestList one = TestList(
      1,
      '2',
      <Object>[3, '4', 5.5],
      <String, Object>{'6': 6, '7': '7', '8': 8.8},
    );
    final TestList two = TestList(
      1,
      '2',
      <Object>[3, '4', 5.5],
      <String, Object>{'6': 6, '7': '7', '8': 8.8},
    );

    expect(one == two, true);
    expect(one.hashCode == two.hashCode, true);
  });

  test('ComparerMap test', () {
    final TestMap one = TestMap(
      1,
      '2',
      <Object>[3, '4', 5.5],
      <String, Object>{'6': 6, '7': '7', '8': 8.8},
    );
    final TestMap two = TestMap(
      1,
      '2',
      <Object>[3, '4', 5.5],
      <String, Object>{'6': 6, '7': '7', '8': 8.8},
    );

    expect(one == two, true);
    expect(one.hashCode == two.hashCode, true);
  });

  test('ComparerList Null 1 test', () {
    final TestNullList one = TestNullList(
      1,
      '2',
      null,
      null,
    );
    final TestNullList two = TestNullList(
      1,
      '2',
      null,
      null,
    );

    expect(one == two, true);
    expect(one.hashCode == two.hashCode, true);
  });

  test('ComparerList Null 2 test', () {
    final TestNullList one = TestNullList(
      1,
      '2',
      <Object?>[3, '4', null, 5.5],
      <String, Object?>{'6': 6, '7': '7', '8': 8.8, '9': null},
    );
    final TestNullList two = TestNullList(
      1,
      '2',
      <Object?>[3, '4', null, 5.5],
      <String, Object?>{'6': 6, '7': '7', '8': 8.8, '9': null},
    );

    expect(one == two, true);
    expect(one.hashCode == two.hashCode, true);
  });

  test('ComparerMap Null 1 test', () {
    final TestNullMap one = TestNullMap(
      1,
      '2',
      null,
      null,
    );
    final TestNullMap two = TestNullMap(
      1,
      '2',
      null,
      null,
    );

    expect(one == two, true);
    expect(one.hashCode == two.hashCode, true);
  });

  test('ComparerMap Null 2 test', () {
    final TestNullMap one = TestNullMap(
      1,
      '2',
      <Object?>[3, '4', null, 5.5],
      <String, Object?>{'6': 6, '7': '7', '8': 8.8, '9': null},
    );
    final TestNullMap two = TestNullMap(
      1,
      '2',
      <Object?>[3, '4', null, 5.5],
      <String, Object?>{'6': 6, '7': '7', '8': 8.8, '9': null},
    );

    expect(one == two, true);
    expect(one.hashCode == two.hashCode, true);
  });
}

class TestBase {
  TestBase(this.v1, this.v2, this.v3, this.v4);

  final int v1;
  final String v2;
  final List<Object> v3;
  final Map<String, Object> v4;
}

class TestList extends ComparerList {
  TestList(this.v1, this.v2, this.v3, this.v4);

  final int v1;
  final String v2;
  final List<Object> v3;
  final Map<String, Object> v4;

  @override
  List<Object> get equals => <Object>[v1, v2, v3, v4];
}

class TestMap extends ComparerMap {
  TestMap(this.v1, this.v2, this.v3, this.v4);

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

class TestNullList extends ComparerList {
  TestNullList(this.v1, this.v2, this.v3, this.v4);

  final int? v1;
  final String? v2;
  final List<Object?>? v3;
  final Map<String, Object?>? v4;

  @override
  List<dynamic> get equals => <dynamic>[v1, v2, v3, v4];
}

class TestNullMap extends ComparerMap {
  TestNullMap(this.v1, this.v2, this.v3, this.v4);

  final int? v1;
  final String? v2;
  final List<Object?>? v3;
  final Map<String, Object?>? v4;

  @override
  Map<String, dynamic> get equals => <String, dynamic>{
        'v1': v1,
        'v2': v2,
        'v3': v3,
        'v4': v4,
      };
}