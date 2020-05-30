import 'dart:io';

import 'package:dart_koans/chapter_1_about_asserts_tests.dart';
import 'package:io/ansi.dart';
import 'dart:mirrors';

void main() {
  ClassMirror c = reflectClass(AboutAsserts);
  Map<Symbol, MethodMirror> aboutAssertMethods = c.instanceMembers;
  bool isNotError = true;
  int index = 0;

  while (isNotError && aboutAssertMethods.length != index) {
    MapEntry<Symbol, MethodMirror> entry =
        aboutAssertMethods.entries.toList()[index];
    index++;
    if (entry.value.simpleName.toString().contains("koan_")) {
      try {
        var a = AboutAsserts();
        var im = reflect(a);
        im.invoke(entry.key, []);
      } catch (e) {
        stdout.writeln(red.wrap("Error happend $e"));
        isNotError = false;
      }
    }
  }
}
