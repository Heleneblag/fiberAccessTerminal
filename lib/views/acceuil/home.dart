import 'package:flutter/material.dart';
import 'package:interfaceh/views/acceuil/AccessRight.dart';
import 'package:interfaceh/views/acceuil/Manage.dart';
import 'package:interfaceh/views/acceuil/ManagePersonnel.dart';

  class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
  }

  class _HomeState extends State<Home> {
  final List<Widget> _widgetOptions = <Widget>[
 Managepersonnel(),
    Accessright (),
  Manage(),

  ];
  int index = 0;
  void SwitchIndex(newIndex) {
  index = 0;
  setState(() {
  index = newIndex;
  });
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor: Colors.white,
  appBar: AppBar(
  toolbarHeight: 60,
  automaticallyImplyLeading: false,
  backgroundColor: Colors.green,
  title: const Text(
  "My first application",
  style: TextStyle(fontSize: 20),
  ),
  actions: [
  IconButton(
  onPressed: (() {}),
  icon: const Icon(
  Icons.add_a_photo,
  color: Colors.white,
  ),
  ),
  IconButton(
  onPressed: (() {}),
  icon: const Icon(
  Icons.search,
  color: Colors.white,
  ),
  ),
  IconButton(
  onPressed: (() {}),
  icon: const Icon(
  Icons.more_vert,
  color: Colors.white,
  ),
  )
  ],
  ),
  bottomNavigationBar: BottomNavigationBar(
  // backgroundColor: ,
  fixedColor: Colors.blue,
  unselectedItemColor: Colors.green,
  currentIndex: index,
  items: const [
  BottomNavigationBarItem(
  icon: Icon(Icons.person_sharp),
  label: "Manage",
  ),
  BottomNavigationBarItem(
  icon: Icon(Icons.settings_suggest),
  label: "Access right",
  ),
  BottomNavigationBarItem(
  icon: Icon(Icons.person_add_rounded),
  label: "Manage Personnel",
  ),
  BottomNavigationBarItem(
  icon: Icon(Icons.account_circle, size: 32),
  label: "profil",
  )
  ],
  onTap: SwitchIndex),
  floatingActionButton: FloatingActionButton(
  onPressed: () {},
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10.0),
  ),
  child: Icon(Icons.chat),
  ),
  body: Center(
  child: _widgetOptions.elementAt(index),
  )
  );
  }
  }



