import 'dart:math';

class RandomInt {
  RandomInt._();

  static int sort(int max) {
    if (max == 0) return 0;

    const min = 0;

    return min + Random().nextInt(max - min);
  }
}
