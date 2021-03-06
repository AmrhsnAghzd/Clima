class WeatherModel {
  final weatherData;

  var temperature;
  var weatherIcon;
  var cityName;
  var weatherMessage;
  var description;
  var windSpeed;
  var humidity;
  WeatherModel(
      {this.weatherData,
      this.temperature,
      this.weatherIcon,
      this.cityName,
      this.weatherMessage,
      this.description,
      this.windSpeed,
      this.humidity});
  updateUi() {
    double temp = weatherData['main']['temp'];
    temperature = temp.toInt();
    var condition = weatherData['weather'][0]['id'];
    weatherIcon = getWeatherIcon(condition);
    weatherMessage = getMessage(temperature);
    cityName = weatherData['name'];
    description = weatherData['weather'][0]['description'];
    windSpeed = weatherData['wind']['speed'];
    humidity = weatherData['main']['humidity'];
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}
