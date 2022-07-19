import 'package:clima/screens/loading_screen.dart';
import 'package:flutter/material.dart';

class ErorrScreen extends StatefulWidget {
  const ErorrScreen({Key? key}) : super(key: key);

  @override
  State<ErorrScreen> createState() => _ErorrScreenState();
}

class _ErorrScreenState extends State<ErorrScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.wifi_off,
                color: Colors.white,
                size: 60,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'لطفا از اتصال دستگاه خود به اینترنت و سرویس موقعیت مکانی مطمین شوید  ',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return LoadingScreen();
                    }));
                  });
                },
                child: Text(
                  'تلاش دوباره',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
