import 'dart:io';

bool ok(String card) {
  const suits = ['H', 'D', 'C', 'S'];
  const numbers = [
    'A',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    'T',
    'J',
    'Q',
    'K'
  ];
  bool flag = true;
  var suit = card.split('')[0];
  var number = card.split('')[1];
  if (!suits.contains(suit)) flag = false;
  if (!numbers.contains(number)) flag = false;
  return flag;
}

void main(List<String> args) {
  var N = int.parse(stdin.readLineSync());
  bool flag = true;
  var A = [];
  for (num i = 0; i < N; i++) {
    A.add(stdin.readLineSync());
  }
  A = A.toSet().toList();
  if (A.length != N) flag = false;
  A.forEach((card) => {
        if (!ok(card)) {flag = false}
      });
  print(flag ? 'Yes' : 'No');
}
