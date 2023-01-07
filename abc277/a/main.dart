import 'dart:io';

void main() {
  var list = stdin.readLineSync().split(' ').map((str)=> int.parse(str));
  var N = list.first;
  var X = list.last;
  var P = stdin.readLineSync().split(' ').map((str)=> int.parse(str)).toList();

  for(int i = 0; i < N; i++){
    if(P[i] == X){
      print(i + 1);
    }
  }
}
