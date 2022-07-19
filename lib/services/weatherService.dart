import 'package:clima/utilities/networking.dart';

const url = 'https://api.openweathermap.org/data/2.5/weather';
const ApiKey = 'eb592c24a3e3fb10d31f8556c508ee6f';

class WeatherService {
  final latitude;
  final longitude;
  var weatherData;

  WeatherService({this.latitude, this.longitude, this.weatherData});

  Future getWeatherService() async {
    if (latitude == null && longitude == null) {
      return;
    } else {
      NetworkingHelper networkingHelper = NetworkingHelper(
          '$url?lat=$latitude&lon=$longitude&appid=$ApiKey&units=metric');
      weatherData = await networkingHelper.getData();
    }
  }
}
