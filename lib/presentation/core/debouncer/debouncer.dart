// import 'dart:async';
// import 'dart:ui';
//
// class Debouncer {
//   final Duration delay;
//   VoidCallback? action;
//   Timer? _timer;
//
//   Debouncer({required this.delay});
//
//   run(VoidCallback action) {
//     _timer?.cancel();
//     _timer = Timer(delay, action);
//   }
//
//   dispose() {
//     _timer?.cancel();
//   }
// }

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

EventTransformer<T> debounce<T>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).switchMap(mapper);
}
