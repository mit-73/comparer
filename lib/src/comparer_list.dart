import 'comparer.dart';

/// {@macro comparer}
///
/// For List dynamic
abstract class ComparerList with Comparer<List<dynamic>> {
  @override
  List<dynamic> get equals;

  @override
  int get hashCode => runtimeType.hashCode ^ super.genHash<dynamic>(equals);

  @override
  bool operator ==(Object other) =>
      (identical(this, other)) ||
      other is ComparerList &&
          runtimeType == other.runtimeType &&
          compareLists<dynamic>(other.equals.toList(), equals.toList());

  @override
  String toString() => '$runtimeType(${equals.toNormalizeString()})';
}

/// List extension
extension ListX<E> on List<E> {
  /// Normalize String
  String toNormalizeString() => toString().replaceAll(RegExp(r'^\[|\]$'), '');
}
