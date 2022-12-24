
import 'package:bloc/bloc.dart';
import 'package:counter_app_cubit/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  int counter = 0;
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) => BlocProvider.of(context);
  void increment()
  {
    counter++;
    emit(CounterIncrementState());

  }

  void decrement()
  {
    counter--;
    emit(CounterDecrementState());
  }
}
