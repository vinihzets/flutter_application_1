import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/bloc/view_bloc.dart';
import 'package:get_it/get_it.dart';

class View extends StatefulWidget {
  const View({super.key});

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  late ViewBloc bloc;
  //dispatchEvent in my view to build my result in stream //

  @override
  void initState() {
    bloc = GetIt.I.get();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
