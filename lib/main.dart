import 'package:flutter/material.dart';
import 'package:network_connectivity/services/connectivity_service.dart';

import 'package:network_connectivity/ui/home.dart';
import 'package:provider/provider.dart';

import 'enum/connectivity_issue.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: missing_required_param
    return StreamProvider<ConnectivityStatus>(
      builder: ( context) =>
          ConnectivityService().connectionStatusController,
      child: MaterialApp(
        title: 'Connectivity Aware UI',
        theme: ThemeData(
            textTheme: Theme.of(context)
                .textTheme
                .apply(bodyColor: Colors.white, displayColor: Colors.white)),
        home: HomeView(),
      ), 
    );
  }
}

