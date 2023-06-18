import 'dart:io';

void main(List<String> args) {
  String input;

  if (args.length > 0)
    input = args[0];
  else {
    stdout.write("Guess a Palindrome phase\n>");
    input = (stdin.readLineSync() ?? "");
  }

  if (input.isEmpty) return;

  print(input == (input.split("").reversed.join(""))
      ? ":)You are right!"
      : ":| You missed it!!!!");
}
