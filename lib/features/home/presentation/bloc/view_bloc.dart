import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:flutter_application_1/core/architeture/bloc_state.dart';
import 'package:flutter_application_1/core/architeture/event.dart';
import 'package:flutter_application_1/features/home/domain/usecases/usecase.dart';

class ViewBloc {
  UseCase useCase;

  late StreamController<Event> _event;
  Sink<Event> get event => _event.sink;

  late StreamController<BlocState> _state;
  Stream<BlocState> get state => _state.stream;

  ViewBloc(this.useCase) {
    _event = StreamController.broadcast();

    _state = StreamController.broadcast();

    _event.stream.listen(_mapListenEvent);
  }

  dispatchEvent(Event event) {
    _event.add(event);
  }

  dispatchState(BlocState state) {
    _state.add(state);
  }

  _mapListenEvent(Event event) {
    if (event is Event) {
      funcRequest();
    }
  }

  funcRequest() async {
    final request = useCase();
    request.fold((left) {
      // show Error in view
    }, (right) {
      dispatchState(BlocStableState(data: right));
      // dispatchState to return results in the view -> in Stream <-
    });
  }
}
