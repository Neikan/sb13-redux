// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

// Project imports:
import 'package:mtg_redux/initialization.dart';
import 'package:mtg_redux/store/reducer_app.dart';
import 'package:mtg_redux/store/state_app.dart';
import 'package:mtg_redux/store/store_middleware.dart';
import 'package:mtg_redux/ui/components/app.dart';

void main() {
  initializeServices();

  final store = Store<StateApp>(
    reducerApp,
    initialState: StateApp.initial(),
    middleware: createStoreMiddleware(),
  );

  runApp(
    StoreProvider<StateApp>(
      store: store,
      child: const App(),
    ),
  );
}
