import 'package:bloc_first_try/number.dart';

abstract class CountState {
  aa() {}
}

class InitCountState extends CountState {
  final Number number;
  InitCountState({required this.number});
  @override
  aa() {
    // TODO: implement aa
    return '234';
  }

  @override
  String toString() {
    return number.count.toString();
  }
}

class IncCountState extends CountState {
  final Number number;
  IncCountState({required this.number});

  @override
  aa() {
    return 'rwer';
  }

  @override
  String toString() {
    return number.count.toString();
  }
}
