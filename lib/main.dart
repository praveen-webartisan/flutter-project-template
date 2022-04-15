import 'package:flutter/material.dart';
import 'package:flutter_project_template/config.dart';
import 'package:flutter_project_template/helpers/uiHelper.dart';
import 'package:flutter_project_template/ui/widgets/custom_navbar.dart';
import 'package:flutter_project_template/ui/widgets/dashboard_components.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project Template',
      theme: CustomTheme.light['data'],
      darkTheme: CustomTheme.dark['data'],
      home: const DashboardPage(title: 'Dashboard'),
    );
  }
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: CustomTheme.gradient,
          ),
        ),
      ),
      drawer: CustomNavBar(currPage: 'dashboard'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            //

          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    onInitState();
  }
}
