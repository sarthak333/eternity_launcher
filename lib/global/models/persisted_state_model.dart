import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:installed_apps/app_info.dart';

part 'persisted_state_model.freezed.dart';
part 'persisted_state_model.g.dart';

@JsonSerializable(createFactory: false)
@freezed
class PersistedState with _$PersistedState {
  factory PersistedState({
    @Default(0) int appCount,
    @AppInfoSerialiser() @Default([]) List<AppInfo> installedApps,
  }) = _PersistedState;

  factory PersistedState.fromJson(Map<String, dynamic> json) =>
      _$PersistedStateFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$PersistedStateToJson(this);
}

class AppInfoSerialiser
    implements JsonConverter<AppInfo, Map<String, dynamic>> {
  const AppInfoSerialiser();

  @override
  AppInfo fromJson(Map<String, dynamic> json) {
    return AppInfo(
      json['name'],
      json['icon'],
      json['packageName'],
      json['versionName'],
      json['versionCode'],
    );
  }

  @override
  Map<String, dynamic> toJson(AppInfo info) {
    return {
      'name': info.name,
      'icon': info.icon,
      'packageName': info.packageName,
      'versionName': info.versionName,
      'versionCode': info.versionCode,
    };
  }
}
