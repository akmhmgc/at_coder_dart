import 'dart:io';

void main() {
  var list = stdin.readLineSync().split(' ').map((str)=> int.parse(str));
  var N = list.first;
  var K = list.last;
  var A = stdin.readLineSync().split(' ').map((str)=> int.parse(str)).toList();

  for(int i = 0; i < K; i++){
    A.removeAt(0);
    A.add(0);
  }
  print(A.join(' '));
}
