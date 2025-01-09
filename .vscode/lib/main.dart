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
    int orinilaNum = 123321;
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
    print(reverse);
  }

  // palindrome();
  // countDigit(a);
  // reverseMethods();
}
