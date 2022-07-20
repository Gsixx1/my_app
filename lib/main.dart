// ignore_for_file: must_be_immutable
import 'dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click';
  int currentIndex = 0;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          centerTitle: false,
          title: Image.asset('images/logo.png', fit: BoxFit.scaleDown),
          backgroundColor: const Color(0xFF65D469),
        ),
        body: Center(
            child: Container(
          color: Colors.green[100],
          //note that to resize a card or a div in this case, you have to use the main axis alignment.
          width: double.infinity,
          height: double
              .infinity, //this is used to know the maximum width size of a screen (X - AXIS), meaning take as much space as possible.
          child: Row(
            // to make your items appear in a column from up to sown format, use the column widget, as a child of sized box will be a child of sizedBox.
            mainAxisAlignment: MainAxisAlignment
                .center, // Main axis alignment and Cross Axis alignment are used for vertical and horizontal positioning of elements respectively.
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // this is another way to style a button.
                    onPrimary: const Color(0xFF050505),
                    primary: const Color(0xFF82B184)),
                onPressed: () {
                  setState(() {
                    buttonName = "Clicked";
                  });
                },
                child: Text(buttonName),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Colors.red), // this is one other way to style a button.
                ),
                onPressed: () {
                  setState(() {
                    buttonName = "Clicked";
                  });
                },
                child: Text(buttonName),
              ),
            ],
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color(0xFF00E676),
                  size: 28,
                  // semanticLabel: 'text to announce in accessibility mode',
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard, color: Color(0xFF000000), size: 28),
                label: 'Dashboard'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings, color: Color(0xFF000000), size: 28),
                label: 'Settings'),
          ],
          currentIndex: currentIndex, // used for navigation
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
