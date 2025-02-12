import 'dart:math';

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
  armStrongNum(int originalNum) {
    int dup = originalNum;
    int digits = originalNum.toString().length;
    int sum = 0;

    while (originalNum > 0) {
      int lastNum = originalNum % 10;
      sum += pow(lastNum, digits).toInt();
      originalNum = originalNum ~/ 10;
    }
    return sum == dup;
  }

  allDivisors(int num) {
    int newNum = 0;
    for (int i = 1; i <= num; i++) {
      if (num % i == 0) {
        newNum += i;
      }
    }
    return newNum;
  }

  primeNumbers(int primNum) {
    int count = 0;
    for (int i = 1; i <= primNum; i++) {
      if (primNum % i == 0) {
        count++;
      }
    }
    if (count == 2) {
      return true;
    } else {
      return false;
    }
  }

  oneToN(int i) {
    if (i < 1) {
      return;
    }
    oneToN(i - 1);
    print(i);
  }

  functionalRecursion(int n) {
    if (n == 1) {
      // print(n);
      return 1;
    }
    return n * functionalRecursion(n - 1);
  }

  recursionPalindrome(int n) {
    int originalNum = n;
    int revNum = 0;
    if (n > 0) {
      int lastNum = n % 10;
      revNum = (revNum * 10) + lastNum;
      n = n ~/ 10;
    }
    if (n == revNum) {
      return true;
    } else {
      return false;
    }
  }

  // reverseArray() {
  List<T> fun<T>(List<T> abc) {
    if (abc.length == 0) {
      return abc;
    }

    return [abc.last] + fun(abc.sublist(0, abc.length - 1));
  }

  List list = [1, 2, 3, 4, 5, 6, 7];
  int i = 0;
  int n = list.length;
  reverseArray(int i, List list, int n) {
    if (i > n / 2) {
      return;
    }

    int temp = list[i];
    list[i] = list[n];
// <<<<<<< main
    // list[n] = list[i];n
    // list[n] = list[i];n
// >>>>>>> palindrome
//     list[n] = temp;

    return reverseArray(i + 1, list, n - 1);
  }

// <<<<<<< main
  int fib = 6;

  fibonocci(int n) {
    if (n <= 1) {
      return n;
    }
    int last = fibonocci(n - 1);
    print(last);
    int secondLast = fibonocci(n - 2);
    print(secondLast);

    return last + secondLast;
  }

  fibonocci(10);
// 011235
  fibbList() {
    int a = 0; //1123
    int b = 1; //0112
//c=1123
// int hash[256]={0};
    for (int i = 0; i < 6; i++) {
      int c = a + b;
      b = a;
      a = c;
      print(c);
    }
  }

  fibbList();

  // print(fibonocci(fib));
  // reverseArray(i, list, n - 1);
  // print(list);
  reverseArray(i, list, n - 1);
  print(list);
// >>>>>>> palindrome

  // print(fun(list));
  // List reverse = [];
  // for (int i = abc.length; i >= 0; i--) {
  //   reverse.add(i);
  // }

  // int start = 0;
  // int end = abc.length - 1;
  // while (start < end) {
  //   int temp = abc[start];
  //   abc[start] = abc[end];
  //   abc[end] = temp;
  //   start++;
  //   end--;
  // }
  // print(reverse);
  // }

  // reverseArray();
  // print(recursionPalindrome(121));
  // dynamic num = functionalRecursion(3);
  // print(num);
  // oneToN(4);
  // print(primeNumbers(12));
  // print(allDivisors(12));
  // print(armStrongNum(143));
  // print(convertNumberToWords(number)); // Output: one hundred
  // palindrome();
  // countDigit(a);
  // reverseMethods();

  List arrayList = [2, 3, 4, 1, 1, 7];
  findSmalllestNum() {
    arrayList.sort();
    int expected = 1;

    // int start = 0;
    // int last = arrayList.length - 1;
//     while (last > 0) {
//       for (int i = 0; i < arrayList.length; i++) {
//         int temp = arrayList[start];
//         arrayList[start] = arrayList[last];
//         arrayList[last] = temp;
//         // print(temp);
// //         start++;
//       } arrayList.w
    List dupList = arrayList.where((n) => n > 0).toList();
    for (var i in dupList) {
      if (i == expected) {
        expected++;
      }
    }
    // return print(arrayList);
    // }
    return print("the out put is $expected");
  }

  findSmalllestNum();

  // count the number of times value is repeated
  countTheValues(List<int> num) {
    Map<int, int> frqValues = {};
    for (int i in num) {
      frqValues[i] = (frqValues[i] ?? 0) + 1;
    }

    frqValues.forEach((key, value) {
      print(
          " the number ${key} is repeated ${value} times");
    });
  }

  List<int> numbers = [1, 2,0,0,0, 3, 1, 2, 3, 5,1,1,1,1,1, 8, 9, 10];
  countTheValues(numbers);
}
