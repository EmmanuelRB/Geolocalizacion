import 'package:flutter/material.dart';  
import 'package:geolocalizacioon/Maps.dart';

class Barra extends StatefulWidget{
   Barra({Key key}) : super(key: key);
  
  @override
  _BarraState createState() => _BarraState();
}

class _BarraState extends State<Barra>{
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
  Text(
    'Index 0: Home',
    style: optionStyle,
  ),
  Text(
     'Index 1: Business',
     style: optionStyle,
  ),
  Text(
     'Index 2: School',
     style: optionStyle,
  ),
];

void _onItemTapped(int index) { 
  setState(() {
    _selectedIndex = index;
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Agua Olimpia'),
      backgroundColor: Colors.green,
          centerTitle: true,
    ),
    body: Center(
      child: Maps(),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          title: Text('Categoria'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group_work),
          title: Text('Equipo'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    ),
  );
 }
}