import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';

class LocationScreen extends StatefulWidget {
  var temperature;
  var weatherIcon;
  var cityName;
  var weatherMessage;
  var description;
  var windSpeed;
  var humidity;
  LocationScreen(
      {this.temperature,
      this.weatherIcon,
      this.cityName,
      this.weatherMessage,
      this.description,
      this.windSpeed,
      this.humidity});
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backimg2.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () async {},
                      child: Icon(
                        Icons.near_me,
                        size: 50.0,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
            
                      '${widget.cityName}',
                      textAlign: TextAlign.center,
                      style: kCityNameStyle,
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.location_city,
                        size: 50.0,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                '${widget.weatherIcon}',
                style: kConditionTextStyle,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                '${widget.description}',
                textAlign: TextAlign.right,
                style: kMessageTextStyle,
              ),
              SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Text(
                  '${widget.temperature}°',
                  textAlign: TextAlign.left,
                  style: kTempTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.wind_power,
                      color: Colors.black54,
                    ),
                    Text(
                      '${widget.windSpeed} Km/h',
                      style: kWinSpeed,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.water_drop_outlined,
                      color: Colors.black54,
                    ),
                    Text('${widget.humidity} %', style: kWinSpeed),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
