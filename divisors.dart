import 'dart:io';

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
  divisorsBySieve(inputNumber);
}

void printDivisors(int number) {
  if (number == 1) {
    stdout.write("\nDivisors: 1 ");
    return;
  }
  stdout.write("\nDivisors: 1 ");
  for (int i = 2; i < (number ~/ 2) + 1; i++) {
    if ((number % i) == 0) {
      stdout.write("${i} ");
    }
  }
  stdout.write("${number}");
}

void divisorsBySieve(int number) {
  int maxNum = number;
  var divisors = List.generate(maxNum + 1, (i) => [], growable: false);

  for (int i = 1; i <= maxNum; ++i) {
    for (int j = i; j <= maxNum; j += i) {
      divisors[j].add(i);
    }
  }

  stdout.write("\nDivisors: ");
  for (var element in divisors[number]) {
    stdout.write("${element} ");
  }
}
