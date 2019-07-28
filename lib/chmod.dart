library chmod;

import 'dart:io';

List<String> getArgs(String filename, mode) {
  if (mode is num) {
    mode = mode.toString();
  }
  if (mode is String) {
    if (mode.startsWith('0o')) {
      mode = mode.substring(2);
    }
    return [mode, filename];
  }
  return [];
}

Future chmod(String filename, String mode) async {
  List<String> args = getArgs(filename, mode);
  if (args.length > 0) {
    return await Process.run('chmod', args);
  }
}
