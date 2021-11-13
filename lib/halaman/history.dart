import 'package:flutter/material.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';

class history extends StatefulWidget {
  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history> {
  final List<Feature> features = [
    Feature(
      title: "Drink Water",
      color: Colors.blue,
      data: [0.2, 0.8, 0.4, 0.7, 0.6],
    ),
    Feature(
      title: "Exercise",
      color: Colors.pink,
      data: [1, 0.8, 0.6, 0.7, 0.3],
    ),
    Feature(
      title: "Study",
      color: Colors.cyan,
      data: [0.5, 0.4, 0.85, 0.4, 0.7],
    ),
    Feature(
      title: "Water Plants",
      color: Colors.green,
      data: [0.6, 0.2, 0, 0.1, 1],
    ),
    Feature(
      title: "Grocery Shopping",
      color: Colors.amber,
      data: [0.25, 1, 0.3, 0.8, 0.6],
    ),
  ];
  // ignore: non_constant_identifier_names
  Widget _HistoryGraph(List<Feature> features) {
    return LineGraph(
      features: features,
      size: Size(480, 640),
      labelX: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5'],
      labelY: ['20%', '40%', '60%', '80%', '100%'],
      showDescription: true,
      graphOpacity: 0.3,
      verticalFeatureDirection: true,
      descriptionHeight: 180,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'graph'),
                Tab(text: 'history'),
              ],
            ),
          ),
          // ignore: unnecessary_new
          body: new TabBarView(
            children: <Widget>[
              _HistoryGraph(features),
              _HistoryGraph(features),
            ],
          ),
        ),
      ),
    );
  }
}
