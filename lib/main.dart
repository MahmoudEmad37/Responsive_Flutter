import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_flutter/core/uiComponents/infoWidget.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.blue,
            width: screenWidth / 2,
            height: screenHeight / 2,
            child: InfoWidget(
              builder: (context, deviceInfo) {
                return Center(
                  child: Text(
                    "${deviceInfo.orientation}\n"
                    "${deviceInfo.deviceType}\n"
                    "${deviceInfo.screenWidth}\n"
                    "${deviceInfo.screenHeight}\n"
                    "${deviceInfo.localWidth}\n"
                    "${deviceInfo.localHeight}\n",
                    style: TextStyle(
                      fontSize: (deviceInfo.localWidth/10),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
