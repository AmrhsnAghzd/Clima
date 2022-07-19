import 'package:clima/models/weather_model.dart';
import 'package:clima/screens/erorr_screen.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/weatherService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  LocationScreen locationScreen = LocationScreen();
  CurrentLocation currentLocation = CurrentLocation();
  WeatherService weatherService = WeatherService();
  WeatherModel weatherModel = WeatherModel();

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    await getWeatherServiceCurrentLocation();
    print(weatherService.weatherData);
    if (weatherService.weatherData == null) {
      goToErorrScreen();
    } else {
      goToLocationScreen();
    }
  }

  Future getWeatherServiceCurrentLocation() async {
    await currentLocation.determinePosition();
    weatherService = WeatherService(
        latitude: currentLocation.latitude,
        longitude: currentLocation.longitude);
    await weatherService.getWeatherService();
  }

  goToErorrScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ErorrScreen();
    }));
  }

  goToLocationScreen() {
    weatherModel = WeatherModel(
      weatherData: weatherService.weatherData,
    );
    weatherModel.updateUi();
    locationScreen = LocationScreen(
      temperature: weatherModel.temperature,
      weatherIcon: weatherModel.weatherIcon,
      cityName: weatherModel.cityName,
      weatherMessage: weatherModel.weatherMessage,
      description: weatherModel.description,
      windSpeed: weatherModel.windSpeed,
      humidity: weatherModel.humidity,
    );
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return locationScreen;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.blue,
          size: 100.0,
        ),
      ),
    );
  }
}
