import 'dart:async';

import 'package:eternity_launcher/global/models/persisted_state_model.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:installed_apps/app_info.dart';
import 'package:installed_apps/installed_apps.dart';

class PersistedController extends HydratedCubit<PersistedState> {
  PersistedController() : super(PersistedState());

  void pollAppChanges() {
    Timer.periodic(
      const Duration(seconds: 30),
      (timer) {
        InstalledApps.getInstalledApps(true, true).then(
          (value) => emit(
            state.copyWith(installedApps: value),
          ),
        );
      },
    );
  }

  Future<List<AppInfo>> getApps() async {
    if (state.installedApps.isNotEmpty) {
      return state.installedApps;
    } else {
      List<AppInfo> apps = await InstalledApps.getInstalledApps(true, true);
      emit(state.copyWith(installedApps: apps));
      return apps;
    }
  }

  @override
  PersistedState fromJson(Map<String, dynamic> json) =>
      PersistedState.fromJson(json);

  @override
  Map<String, dynamic> toJson(PersistedState state) => state.toJson();
}
