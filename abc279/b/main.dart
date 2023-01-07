import 'dart:io';

void main() {
  var S = stdin.readLineSync();
  var T = stdin.readLineSync();
  print(S.contains(T) ? 'Yes' : 'No');
}
