import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.freezed.dart';
part 'providers.g.dart';

// A sealed union: the forecast is exactly one of these shapes.
@freezed
sealed class WeatherState with _$WeatherState {
  const factory WeatherState.sunny({required int temperature}) = Sunny;
  const factory WeatherState.rainy() = Rainy;
  const factory WeatherState.unknown() = Unknown;
}

@riverpod
class Forecast extends _$Forecast {
  @override
  WeatherState build() => const WeatherState.unknown();

  void rainy() => state = const WeatherState.rainy();

  void sunny() => state = const WeatherState.sunny(temperature: 28);
}
