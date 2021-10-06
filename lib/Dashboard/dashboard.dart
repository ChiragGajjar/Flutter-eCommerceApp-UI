import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  int selectedIndex = 0;
  final List<String> categories = ['Upcoming', 'Paid', 'Overdue', 'Recurring'];

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
