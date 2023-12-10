import 'package:flutter/material.dart';
import 'package:flutter_lab/TopWidget.dart';

class SliverBar extends StatefulWidget {
  final TabController tabController;

  const SliverBar({super.key, required this.tabController});

  @override
  State<SliverBar> createState() => _SliverBarState();
}

class _SliverBarState extends State<SliverBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 250,
      flexibleSpace: const Material(
          child: FlexibleSpaceBar(
            background: Padding(padding: EdgeInsets.only(bottom: 14),child:TopWidget()),
          )),
      bottom: TabBar(
        controller: widget.tabController,
        tabs: const <Widget>[
          Tab(
            text: "Profile",
          ),
          Tab(
            text: "Settings",
          ),
        ],
      ),
    );
  }
}