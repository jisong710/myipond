// ignore: unused_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'appliance.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:scoped_model/scoped_model.dart';

class DataKolam extends Model {
  // ignore: prefer_final_fields
  List<Appliance> _applianceList = [
    Appliance(
        title: 'suhu',
        subtitle: '24 C',
        leftIcon: Icons.thermostat,
        topRightIcon: Icons.threesixty,
        bottomRightIcon: Icons.threesixty,
        isEnable: true,
        id: ''),
    Appliance(
        title: 'ph',
        subtitle: '7.0',
        leftIcon: Icons.height,
        topRightIcon: Icons.threesixty,
        bottomRightIcon: Icons.threesixty,
        isEnable: false,
        id: ''),
    Appliance(
        title: 'kekeruhan',
        subtitle: '0 %',
        leftIcon: Icons.water,
        topRightIcon: Icons.threesixty,
        bottomRightIcon: Icons.threesixty,
        isEnable: true,
        id: ''),
    Appliance(
        title: 'ketinggian',
        subtitle: '0m',
        leftIcon: Icons.water,
        topRightIcon: Icons.threesixty,
        bottomRightIcon: Icons.threesixty,
        isEnable: true,
        id: ''),
  ];
}

class ApplianceModel extends DataKolam {
  List<Appliance> get allYatch {
    return List.from(_applianceList);
  }
}
