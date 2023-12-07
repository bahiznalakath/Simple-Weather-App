part of 'weather_bloc.dart';

@immutable
abstract class WeatherState {}

 final class WeatherInitial extends WeatherState {}

final class WeatherLoading extends WeatherState {}

final class WeatherFailure extends WeatherState {}

final class WeatherSuccess extends WeatherState {
  final Weather weather ;
    WeatherSuccess (this.weather);
    @override
  List<Object> get props =>[weather];
}

