import 'package:flutter/material.dart';
import 'package:task/feature/dashboard/widget/dashboard_appbar.dart';

class DashboardScreenOne extends StatelessWidget {
  const DashboardScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xffD9E4F1),
      appBar: DashboardAppBar(),
    );
  }
}