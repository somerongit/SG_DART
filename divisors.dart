import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int inputNumber;
  if (args.length > 0) {
    var tmp = int.tryParse(args[0]);
    if (tmp == null) return;

    inputNumber = tmp;
  } else {
    stdout.write("Tell me number and I will tell you the divisors\n>");
    int? tmp = int.tryParse((stdin.readLineSync() ?? "0"));

    if (tmp == null) return;

    inputNumber = tmp;
  }

  printDivisors(inputNumber);
  // divisorsBySieve(inputNumber);
}

void printDivisors(int number) {
  stdout.write("Divisors: ");
  for (int i = 2; i < (number ~/ 2) + 1; i++) {
    if ((number % i) == 0) {
      stdout.write("${i} ");
    }
  }
}

// String time is huge but actual ans is very fast
void divisorsBySieve(int number) {
  // 1000000000
  int maxNum = 10000000;
  var divisors = List.generate(maxNum + 1, (i) => [], growable: false);
  print("End of push finite");

  for (int i = 1; i <= maxNum; ++i) {
    for (int j = i; j <= maxNum; j += i) {
      divisors[j].add(i);
    }
  }
  print("End of push finite 2");

  for (var element in divisors[number]) {
    stdout.write("${element} ");
  }
}
