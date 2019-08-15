import '../lib/chmod.dart';

main() async {
  final result = await chmod('./test.txt', '0o777');
  print('Result: $result');
}
