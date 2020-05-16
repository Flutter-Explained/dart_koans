import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as path;

const KOANS_FILENAME = 'koans.txt';

/// Opens the given [filename] and yields the fully-qualified names of
/// TestCases found inside (one per line)
Stream<String> names_from_file(String filename) async* {
  yield* File(filename)
      .openRead()
      .transform(Utf8Decoder())
      .transform(LineSplitter());
}

/// Returns a [TestSuite] loaded with all tests found in the given
/// [names], preserving the order in which they are found.
void koans_suite(Stream<String> names) async {
  path.dirname(Platform.script.path);
  var pathList = path.split(Platform.script.path);
  pathList.removeLast();
  pathList.removeLast();
  pathList.add('test');
  var newPath = path.joinAll(pathList);
  print(newPath);

  await for (var testFileName in names) {
    var finalPath = path.join(newPath, testFileName);
    var t = await Process.start('dart', [finalPath]);
    if (t != null && t.stdout != null) {
      t.stdout
          .transform(Utf8Decoder())
          .transform(LineSplitter())
          .listen((data) => print(data));
    }
  }
}

/// returns a [TestSuite] loaded with all the koans [TestCase's] listed in [filename]
Future<void> koans({filename = KOANS_FILENAME}) async {
  filename = path.dirname(Platform.script.path) +
      Platform.pathSeparator +
      KOANS_FILENAME;
  var names = await names_from_file(filename);
  return koans_suite(names);
}
