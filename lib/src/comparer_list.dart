import 'comparer.dart';

/// {@macro comparer}
///
/// For List Objects
abstract class ComparerList with Comparer<List<Object>> {
  @override
  List<Object> get equals;

  @override
  int get hashCode => runtimeType.hashCode ^ super.genHash(equals);

  @override
  bool operator ==(Object other) =>
      (identical(this, other)) ||
      other is ComparerList &&
          runtimeType == other.runtimeType &&
          compareLists(other.equals.toList(), equals.toList());

  @override
  String toString() => '$runtimeType(${equals.toNormalizeString()})';
}

/// List extension
extension ListX<E> on List<E> {
  /// Normalize String
  String toNormalizeString() => toString().replaceAll(RegExp(r'^\[|\]$'), '');
}
