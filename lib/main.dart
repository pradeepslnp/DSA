void main() {
  // reverse method

  int originalNum = 12345678989;
  int reverseNum = 0;
  reverseMethods() {
    while (originalNum > 0) {
      int lastNum = originalNum % 10;
      reverseNum = (reverseNum * 10) + lastNum;
      originalNum = originalNum ~/ 10;
    }
    print(reverseNum);
  }

  //count digit
  int a = -12345625;
  countDigit(int val) {
    int store = val.abs();
    store.toString().length;
    return print(store.toString().length);
  }

  palindrome() {
    int orinilaNum = 123001000321;
    int dupPalinNum = orinilaNum;

    int reverse = 0;
    while (dupPalinNum > 0) {
      int lastNum = dupPalinNum % 10;
      reverse = (reverse * 10) + lastNum;
      dupPalinNum = dupPalinNum ~/ 10;
    }
    if (orinilaNum == reverse) {
      return print(true);
    } else {
      return print(false);
    }
  }

  String convertNumberToWords(int number) {
    if (number == 0) return "zero";

    final List<String> units = [
      "",
      "one",
      "two",
      "three",
      "four",
      "five",
      "six",
      "seven",
      "eight",
      "nine"
    ];
    final List<String> teens = [
      "ten",
      "eleven",
      "twelve",
      "thirteen",
      "fourteen",
      "fifteen",
      "sixteen",
      "seventeen",
      "eighteen",
      "nineteen"
    ];
    final List<String> tens = [
      "",
      "",
      "twenty",
      "thirty",
      "forty",
      "fifty",
      "sixty",
      "seventy",
      "eighty",
      "ninety"
    ];

    String result = "";

    if (number >= 1000) {
      int thousand = number ~/ 1000;
      result += units[thousand] + " thousand" + " ";
      number %= 1000;
    }
    if (number >= 100) {
      int hun = number ~/ 100;
      result += units[hun] + " hundred" + " ";
      number %= 100;
    }
    if (number >= 10) {
      int uni = number ~/ 10;
      result += tens[uni] + " ";
      number %= 10;
    }
    if (number > 0) {
      result += units[number] + " ";
    }

    return result.trim();
  }

  int number = 3252;
  print(convertNumberToWords(number)); // Output: one hundred

  // palindrome();
  // countDigit(a);
  // reverseMethods();
}
