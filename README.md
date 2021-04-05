# comparer

A Dart package that helps to implement value based equality without needing to explicitly override `==`, `hashCode` and `.toString()`.

## Usage

First, we need to do add `comparer` to the dependencies of the `pubspec.yaml`

``` yaml
dependencies:
  comparer: ^2.0.0
```

Lastly, we need to extend Comparer (or ComparerList, ComparerMap)

``` dart
import 'package:comparer/comparer.dart';

class Test extends ComparerList {
  Test(this.v1, this.v2, this.v3, this.v4);

  final int v1;
  final String v2;
  final List<Object> v3;
  final Map<String, Object> v4;

  @override
  List<Object> get equals => [v1, v2, v3, v4];
}
```