import 'package:dio/dio.dart';
import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    //http://api.weatherapi.com/v1/current.json?key=02e42614dc824161b30113915231905&q=Wroclaw&aqi=no
    final response = await Dio().get(
        'http://api.weatherapi.com/v1/current.json?key=02e42614dc824161b30113915231905&q=Wroclaw&aqi=no');
    return const WeatherModel(city: 'Warsaw', temperature: -5.5);
  }
}
