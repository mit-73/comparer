import 'comparer.dart';

/// {@macro comparer}
///
/// For Map dynamic
abstract class ComparerMap with Comparer<Map<String, dynamic>> {
  @override
  Map<String, dynamic> get equals;

  @override
  int get hashCode => runtimeType.hashCode ^ genHash<dynamic>(equals.values);

  @override
  bool operator ==(Object other) =>
      (identical(this, other)) ||
      other is ComparerMap &&
          runtimeType == other.runtimeType &&
          compareLists<dynamic>(other.equals.values.toList(), equals.values.toList());

  @override
  String toString() => '$runtimeType(${equals.toNormalizeString()})';
}

/// Map extension
extension MapX<K, V> on Map<K, V> {
  /// Normalize String
  String toNormalizeString() => toString().replaceAll(RegExp(r'^{|}$'), '');
}
