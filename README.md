# chmod

Useful for writing chmod command in Dart.

```dart
import 'package:chmod'

main() async {
  final result = await chmod('./test.txt', '0o777');
  print('Result: $result');
}
```
