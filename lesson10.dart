import 'dart:io';
import 'dart:math';

void main() {
  int check;
  int comPoint = 0;
  int humPoint = 0;
  print('chose colvo round');
  int n = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < n; i++) {
    check = roundWithHard();
    if (check == 0) {
      print('computer iiiissss wiiiinnn');

      comPoint++;
      print('$comPoint:$humPoint');
    } else if (check == 1) {
      print('human iiiissss wiiiinnn');

      humPoint++;
      print('$comPoint:$humPoint');
    } else if (check == 2) {
      print('draw');
      print('$comPoint:$humPoint');
    }
  }
}

int round() {
  int left = 0;
  int right = 100;
  int count = 0;
  String answer;
  print("===============================");
  while (true) {
    stdout.write('is it your number ${(left + right) ~/ 2}?\n');
    answer = stdin.readLineSync()!;
    if (answer == 'yes') {
      print('computer find your number${(left + right) ~/ 2}');
      break;
    } else if (answer == 'less') {
      right = (left + right) ~/ 2;
      count++;
    } else if (answer == 'more') {
      left = (left + right) ~/ 2;
      count++;
    } else {
      print('wrong entering');
    }
  }
  print("-----------------------------------");
  int count1 = 0;
  int rand = Random().nextInt(100);
  print('guess number of computer\nentre your number');
  while (true) {
    answer = stdin.readLineSync()!;
    if (int.parse(answer) == rand) {
      print('you won');
      break;
    } else if (int.parse(answer) > rand) {
      print('number less than your');
      count1++;
    } else if (int.parse(answer) < rand) {
      print('number more than your');
      count1++;
    }
  }
  print("===============================");
  if (count1 > count) {
    return 0;
  } else if (count1 < count) {
    return 1;
  } else {
    return 2;
  }
}

//--------------------------------------------------------
int roundWithHard() {
  int left = 0;
  int right = 100;
  int count = 0;
  String answer, hard;
  print('chose your hard');
  hard = stdin.readLineSync()!;
  print("===============================");
  if (hard == 'hard') {
    while (true) {
      stdout.write('is it your number ${(left + right) ~/ 2}?\n');
      answer = stdin.readLineSync()!;
      if (answer == 'yes') {
        print('computer find your number${(left + right) ~/ 2}');
        break;
      } else if (answer == 'less') {
        right = (left + right) ~/ 2;
        count++;
      } else if (answer == 'more') {
        left = (left + right) ~/ 2;
        count++;
      } else {
        print('wrong entering');
      }
    }
  }
  if (hard == 'easy') {
    int left = 0;
    int right = 100;
    int colvo = 1;
    int wrong = 0;
    int wrong1 = 0;
    int rand = (left + right) ~/ 2;
    while (true) {
      stdout.write('is it your number${rand}?\n');
      String? answer = stdin.readLineSync();
      if (answer == 'yes') {
        break;
      } else if (answer == 'less') {
        right = (left + right) ~/ 2;
        rand = Random().nextInt(right - left + 1) + left;
        colvo++;
        wrong++;
      } else if (answer == 'more') {
        left = (left + right) ~/ 2;
        rand = Random().nextInt(right - left + 1) + left;
        colvo++;
        wrong1++;
      } else {
        print('wrong entering');
      }
      if (wrong1 > 4 || wrong > 4) {
        left = 0;
        right = 100;
        wrong = 0;
        wrong1 = 0;
        print('again');
      }
    }
    print(' programm find it');
  }
  print("-----------------------------------");
  int count1 = 0;
  int rand = Random().nextInt(100);
  print('guess number of computer\nentre your number');
  while (true) {
    answer = stdin.readLineSync()!;
    if (int.parse(answer) == rand) {
      print('you won');
      break;
    } else if (int.parse(answer) > rand) {
      print('number less than your');
      count1++;
    } else if (int.parse(answer) < rand) {
      print('number more than your');
      count1++;
    }
  }
  print("===============================");
  if (count1 > count) {
    return 0;
  } else if (count1 < count) {
    return 1;
  } else {
    return 2;
  }
}
