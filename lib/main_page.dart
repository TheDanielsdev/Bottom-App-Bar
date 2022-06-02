import 'package:bottom_app_bar/pages/bussiness.dart';
import 'package:bottom_app_bar/pages/home.dart';
import 'package:bottom_app_bar/pages/person.dart';
import 'package:bottom_app_bar/pages/settings.dart';
import 'package:bottom_app_bar/tabbarmaterial_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  final List pages = [
    const Home(),
    const Bussiness(),
    const Person(),
    const Settings()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[index],
      bottomNavigationBar: TabBarMaterialWidget(
        index: index,
        onChangedTab: onChangedTab,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  void onChangedTab(itemIndex) {
    setState(() {
      index = itemIndex;
    });
  }
}
