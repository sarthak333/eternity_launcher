import 'package:eternity_launcher/global/controllers/persisted_cubit.dart';
import 'package:eternity_launcher/global/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeIndex extends StatefulWidget {
  const HomeIndex({super.key});

  @override
  State<HomeIndex> createState() => _HomeIndexState();
}

class _HomeIndexState extends State<HomeIndex> {
  final PersistedController _persistedController = PersistedController();

  @override
  void initState() {
    GetIt.I.registerSingleton(_persistedController);
    _persistedController.pollAppChanges();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => _persistedController)],
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}
