import 'package:flutter/cupertino.dart';
import 'package:responsive_flutter/core/enums/deviveType.dart';

class DeviceInfo {
  final Orientation orientation;
  final DeviceType deviceType;
  final double screenWidth;
  final double screenHeight;
  final double localWidth;
  final double localHeight;

  DeviceInfo({
    this.orientation,
    this.deviceType,
    this.screenWidth,
    this.screenHeight,
    this.localWidth,
    this.localHeight,
  });
}
