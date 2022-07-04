import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // print(answer());
  // nardy();
  // print(pow(3, 3));
  // print(natural(321));
  print(fib(60));
}

count(n, coin) {
  if (coin <= n) {
    print(coin);
    coin++;
    return count(n, coin);
  }
}

String answer() {
  int a = Random().nextInt(10);
  int b = Random().nextInt(10);
  int sum = a + b;
  print('whst eqaual to $a+$b?');
  int answ = int.parse(stdin.readLineSync()!);
  if (answ == sum) {
    return 'all good';
  } else {
    return answer();
  }
}

nardy() {
  int num = Random().nextInt(6) + 1;
  print('cubic=$num');
  print("1-again;2-end");
  int answer = int.parse(stdin.readLineSync()!);
  if (answer == 1) {
    return nardy();
  } else if (answer == 2) {
    return print('wasted');
  }
}

int pow(a, b) {
  if (b == 0) {
    return 1;
  } else {
    b--;
    return a * pow(a, b);
  }
}

int natural(num) {
  if (num < 10) {
    return num % 10;
  } else {
    return num % 10 + natural(num ~/ 10);
  }
}

int fib(n) {
  if (n <= 2) {
    return 1;
  } else {
    return fib(n - 2) + fib(n - 1);
  }
}
