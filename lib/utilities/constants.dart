import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Carre',
  fontSize: 100.0,
  color: Colors.black
);
const kCityNameStyle = TextStyle(
  fontFamily: 'RobotoMono',
  fontSize: 20,
  color: Colors.black,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Carre',
  fontSize: 20.0,
  color: Colors.black54,
);

const kButtonTextStyle = TextStyle(
  fontSize: 100.0,
  fontFamily: 'RobotoMono',
);

const kWinSpeed = TextStyle(
  fontFamily: 'Carre',
  color: Colors.black,
); 

const kConditionTextStyle = TextStyle(
  fontSize: 150.0,
);

const kTextFieldInputDecoration = InputDecoration(

  fillColor: Colors.black,
  filled: true,
  icon: Icon(Icons.location_city,color: Colors.white,),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(color: Colors.black),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  )

);