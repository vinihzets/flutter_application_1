abstract class BlocState<T> {
  T? data;

  BlocState({required this.data});
}

class BlocStableState extends BlocState {
  BlocStableState({required super.data});
}

class BlocEmptyState extends BlocState {
  BlocEmptyState({super.data});
}

class BlocIdleState extends BlocState {
  BlocIdleState({super.data});
}

class BlocErrorState extends BlocState {
  String? error;

  BlocErrorState({this.error, super.data});
}
