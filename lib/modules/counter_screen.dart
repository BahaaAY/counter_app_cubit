import 'package:counter_app_cubit/cubit/cubit.dart';
import 'package:counter_app_cubit/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Counter with Cubit"),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.remove),
                    onPressed: () {
                      CounterCubit.get(context).decrement();
                    },
                    heroTag: "MinusFAB",
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "${CounterCubit.get(context).counter}",
                    style: TextStyle(
                      fontSize: 62.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      CounterCubit.get(context).increment();
                    },
                    heroTag: "PlusFAB",
                  ),
                ],
              ),
            ),
          );
        }),
      );
  }
}
