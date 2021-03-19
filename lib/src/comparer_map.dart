import 'comparer.dart';

/// {@macro comparer}
/// 
/// For Map Objects
abstract class ComparerMap with Comparer<Map<String, Object>> {
  @override
  Map<String, Object> get equals;

  @override
  int get hashCode => runtimeType.hashCode ^ genHash(equals.values);

  @override
  bool operator ==(Object other) =>
      (identical(this, other)) ||
      other is ComparerMap &&
          runtimeType == other.runtimeType &&
          compareLists(other.equals.values.toList(), equals.values.toList());

  @override
  String toString() => '$runtimeType(${equals.toNormalizeString()})';
}

/// Map extension
extension MapX<K, V> on Map<K, V> {
  /// Normalize String
  String toNormalizeString() => toString().replaceAll(RegExp(r'^{|}$'), '');
}