// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Forecast)
final forecastProvider = ForecastProvider._();

final class ForecastProvider extends $NotifierProvider<Forecast, WeatherState> {
  ForecastProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'forecastProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$forecastHash();

  @$internal
  @override
  Forecast create() => Forecast();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WeatherState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WeatherState>(value),
    );
  }
}

String _$forecastHash() => r'fea61a44fb5cc011bd0eef202804a6aaca6785cc';

abstract class _$Forecast extends $Notifier<WeatherState> {
  WeatherState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<WeatherState, WeatherState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<WeatherState, WeatherState>,
              WeatherState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
