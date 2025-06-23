// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:todo_doing_own/third.dart';

class Todoadd extends StatelessWidget {
  const Todoadd({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Tutorial> tutorials = [
      Tutorial(
        title: "1. Flutter Basics",
        details: [
          "What is Flutter & Daart",
          "Installing Flutter & VSCode/Android Studio",
          "Project structure overview",
          "main(), runApp(), MaterialApp",
        ],
      ),
      Tutorial(
        title: "2. Widgets & Layouts",
        details: [
          "StatelessWidget vs StatefulWidget",
          "Common Widgets: Text, Image, Container, Row, Column",
          "Layout Widgets: Padding, Margin, SizedBox, Align, center",
          "main(), runApp(), MaterialApp",
        ],
      ),

      Tutorial(
        title: " 3. Scaffold & App UI Structure",
        details: [
          "Scaffold, AppBar, Drawer, BottomNavigationBar, FloatingActionButton",
          "Navigation: Navigator.push(), pop(), passing data between screens",
        ],
      ),

      Tutorial(
        title: "4. Styling & Themes",
        details: [
          "Colors, Fonts, Shadows, Elevation",
          "Light/Dark mode",
          "ThemeData",
        ],
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.delete)],
        title: Text(
          "Ocean",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 29, 17, 158),
        leading: Icon(Icons.delete),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Text(
                "Flutter class",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tutorials.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.only(left: 180),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("  ${tutorials[index].title}"),

                        ...tutorials[index].details.map((e) {
                          return Text("$e");
                        }),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: (Colors.grey),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: (const Color.fromARGB(255, 33, 35, 145)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Third();
              },
            ),
          );
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: const Color.fromARGB(255, 52, 71, 111),
    );
  }
}

class Tutorial {
  final String title;
  final List<String> details;
  Tutorial({required this.title, required this.details});
}
