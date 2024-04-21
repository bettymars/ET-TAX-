import 'package:flutter/material.dart';
import 'home_page.dart'; // Import your HomePage class
import 'taxes_page.dart'; // Import your TaxesPage class
import 'invoice_page.dart'; // Import your InvoicePage class
import 'reminder_page.dart'; // Import your ReminderPage class
import 'community_page.dart'; // Import your CommunityPage class

void main() {
  runApp(StoriesFeedApp());
}

class StoriesFeedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => StoriesFeedPage(),
        '/home': (context) => HomePage(), // Replace with your HomePage class
        '/taxes': (context) => TaxesPage(), // Replace with your TaxesPage class
        '/invoice': (context) => InvoicePage(), // Replace with your InvoicePage class
        '/reminder': (context) => ReminderPage(), // Replace with your ReminderPage class
        '/community': (context) => CommunityPage(), // Replace with your CommunityPage class
      },
    );
  }
}

class StoriesFeedPage extends StatefulWidget {
  @override
  _StoriesFeedPageState createState() => _StoriesFeedPageState();
}

class _StoriesFeedPageState extends State<StoriesFeedPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(), // Replace with your HomePage class
    TaxesPage(), // Replace with your TaxesPage class
    InvoicePage(), // Replace with your InvoicePage class
    ReminderPage(), // Replace with your ReminderPage class
    CommunityPage(), // Replace with your CommunityPage class
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
        title: Text('Hello, Customer!'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Taxes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Invoice',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important),
            label: 'Reminder',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Community',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}