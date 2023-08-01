import 'package:bloc_first_try/number.dart';

abstract class CountState {}

class InitCountState extends CountState {
  final Number number;
  InitCountState({required this.number});

  @override
  String toString() {
    return number.count.toString();
  }
}

class IncCountState extends CountState {
  final Number number;
  IncCountState({required this.number});
}
