import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WidgetNavigator(),
    );
  }
}
class WidgetNavigator extends StatefulWidget {
  @override
  _WidgetNavigatorState createState() => _WidgetNavigatorState();
}
class _WidgetNavigatorState extends State<WidgetNavigator> {
  final PageController _pageController = PageController();
  final List<Widget> _pages = [
    Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 252, 31, 28),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 15,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.dangerous, size: 40, color: Colors.white),
            SizedBox(height: 10),
            Text(
              'Dangerous widget',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.5,
                shadows: [
                  Shadow(
                    blurRadius: 5,
                    color: Colors.black45,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 233, 245, 9),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 15,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.warning_amber, size: 40, color: Colors.white),
            SizedBox(height: 10),
            Text(
              'Warning widget',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.5,
                shadows: [
                  Shadow(
                    blurRadius: 5,
                    color: Colors.black45,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 25, 216, 105),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 15,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, size: 40, color: Colors.white),
            SizedBox(height: 10),
            Text(
              'Success widget',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.5,
                shadows: [
                  Shadow(
                    blurRadius: 5,
                    color: Colors.black45,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ];
  void _nextPage() {
    _pageController.nextPage(
      duration: Duration(milliseconds: 500), // Smooth and longer transition
      curve: Curves.easeInOutCubic,
    );
  }
  void _previousPage() {
    _pageController.previousPage(
      duration: Duration(milliseconds: 500), // Smooth and longer transition
      curve: Curves.easeInOutCubic,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row widgets'),
      ),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            scrollDirection: Axis.horizontal, // Horizontal o'tish yo'nalishi
            children: _pages,
          ),
          Positioned(
            top: 20,
            left: MediaQuery.of(context).size.width * 0.5 - 30,
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: 40, color: Colors.black),
              onPressed: _previousPage,
            ),
          ),
          Positioned(
            bottom: 20,
            left: MediaQuery.of(context).size.width * 0.5 - 30,
            child: IconButton(
              icon: Icon(Icons.arrow_forward, size: 40, color: Colors.black),
              onPressed: _nextPage,
            ),
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
