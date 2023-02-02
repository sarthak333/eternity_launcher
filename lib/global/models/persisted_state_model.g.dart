// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persisted_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$PersistedStateToJson(PersistedState instance) =>
    <String, dynamic>{
      'appCount': instance.appCount,
      'installedApps':
          instance.installedApps.map(const AppInfoSerialiser().toJson).toList(),
    };

_$_PersistedState _$$_PersistedStateFromJson(Map<String, dynamic> json) =>
    _$_PersistedState(
      appCount: json['appCount'] as int? ?? 0,
      installedApps: (json['installedApps'] as List<dynamic>?)
              ?.map((e) =>
                  const AppInfoSerialiser().fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PersistedStateToJson(_$_PersistedState instance) =>
    <String, dynamic>{
      'appCount': instance.appCount,
      'installedApps':
          instance.installedApps.map(const AppInfoSerialiser().toJson).toList(),
    };
