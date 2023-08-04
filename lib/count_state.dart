import 'package:bloc_first_try/number.dart';
import 'package:http/http.dart' as http;

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
 
  IncCountState copyWith({
    final Number? number,
  }) {return IncCountState(
    number: number ?? this.number
  );}
   
  @override
  String toString() {
    return number.count.toString();
  }
}

class GetCountState extends CountState {

}