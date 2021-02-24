import 'package:bloc/bloc.dart';
import 'package:bloc_and_cubit/screens/weather_search.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: WeatherSearchScreen(),
    );
  }
}

class MyState {
  final int field1;
  final String field2;

  MyState(this.field1, this.field2);
}

class MyCubit extends Cubit<MyState> {
  MyCubit() : super(MyState(0, 'Initial value'));

  void changeState() {
    emit(MyState(0, 'New value'));
  }
}
