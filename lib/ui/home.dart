import 'package:flutter/material.dart';
import 'package:network_connectivity/enum/connectivity_issue.dart';
import 'package:network_connectivity/ui/shared/app_colors.dart';
import 'package:provider/provider.dart';

double screenHeight(BuildContext context,
    {int dividedBy = 1, double decreasedBy = 0.0}) {
  assert(dividedBy != 0, "Don't divide by 0");
  return (MediaQuery.of(context).size.height - decreasedBy) / dividedBy;
}

class HomeView extends StatelessWidget {
  static const int CounterMargins = 60;

  @override
  Widget build(BuildContext context) {
     var connectionStatus = Provider.of<ConnectivityStatus>(context);
if(connectionStatus != ConnectivityStatus.Offline){
return Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child:Text("online")
        ));
}
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Center(child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("you are offline"),
        )));

  }
}