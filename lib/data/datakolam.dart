import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'appliance.dart';
import 'package:scoped_model/scoped_model.dart';

class datakolam extends Model {
  // ignore: prefer_final_fields
  List<Appliance> _applianceList = [
    Appliance(
        title: 'suhu',
        subtitle: '24 C',
        leftIcon: Icons.thermostat,
        topRightIcon: Icons.threesixty,
        bottomRightIcon: Icons.threesixty,
        isEnable: true),
    Appliance(
        title: 'ph',
        subtitle: '7.0',
        leftIcon: Icons.height,
        topRightIcon: Icons.threesixty,
        bottomRightIcon: Icons.threesixty,
        isEnable: false),
    Appliance(
        title: 'ketinggian',
        subtitle: 'Sweet Home',
        leftIcon: Icons.height,
        topRightIcon: Icons.router,
        bottomRightIcon: Icons.threesixty,
        isEnable: true),
    Appliance(
        title: 'kekeruhan',
        subtitle: '0 %',
        leftIcon: Icons.water,
        topRightIcon: Icons.threesixty,
        bottomRightIcon: Icons.threesixty,
        isEnable: true),
    Appliance(
        title: 'debit',
        subtitle: '2L/menit',
        leftIcon: Icons.water,
        topRightIcon: Icons.threesixty,
        bottomRightIcon: Icons.threesixty,
        isEnable: true),
  ];
}

class ApplianceModel extends datakolam {
  List<Appliance> get allYatch {
    return List.from(_applianceList);
  }
}
