import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.freezed.dart';
part 'providers.g.dart';

@freezed
abstract class CampState with _$CampState {
  const factory CampState({
    required int camperCount,
    required bool stormIncoming,
  }) = _CampState;
}

@riverpod
class Camp extends _$Camp {
  @override
  CampState build() => const CampState(camperCount: 12, stormIncoming: false);

  void addCamper() => state = state.copyWith(camperCount: state.camperCount + 1);

  void toggleStorm() => state = state.copyWith(stormIncoming: !state.stormIncoming);
}
