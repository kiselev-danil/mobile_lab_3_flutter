import 'package:flutter/material.dart';
import 'package:flutter_lab/SettingsTab.dart';
import 'package:flutter_lab/SliverBar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 14, top: 40, right: 14, bottom: 40),
            child: NestedScrollView(
                headerSliverBuilder: (context, value) {
                  return [SliverBar(tabController: _tabController)];
                },
                body: TabBarView(
                  controller: _tabController,
                  children: const [Text("Profile"), SettingsTab()],
                ))));
  }
}

