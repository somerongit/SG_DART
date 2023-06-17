import 'dart:io';

String timeLeft(double? age) {
  if (age == null) return "";

  if (age >= 100) return "Congratulation You are Im-mortal!";

  int yLeft = (100 - age).floor(),
      dLeft = yLeft * 365 + (yLeft / 4).floor(),
      hLeft = (dLeft * 23.99).ceil(),
      mLeft = hLeft * 60;

  return """******** Time Left ********
In Years : ${yLeft}
In Months : ${yLeft * 12}
In Days : ${dLeft}
In Hours : ${hLeft}
In Minutes : ${mLeft}
In Seconds : ${mLeft * 60}
""";
}

void main(List<String> args) {
  String name;
  double? age;
  String? inpt;

  if (args.length == 2) {
    name = args[0];
    double? t = double.tryParse(args[1]);
    if (t != null) age = t;
    print("Hi ${name}, I'm Someron. Nice to meet you!");
  } else {
    stdout.write("Hi, there I'm Someron. And You?\n>");
    inpt = stdin.readLineSync();
    if (inpt == null) return;
    name = inpt;

    stdout.write("Nice to meet you ${name}, Can I have your age please...\n>");
    inpt = stdin.readLineSync();
    if (inpt == null) return;
    inpt = inpt.toLowerCase();

    if (inpt == "no" || inpt == "n") {
      print(":( Okay then, Bye ${name} have a Good day!");
      return;
    }

    age = double.tryParse(inpt);
    if (age == null) return;
  }

  print(timeLeft(age));
}
