import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("GeeksforGeeks"),
          ),
          body: Center(
            child: Column(
              children: [
                ElevatedButton(onPressed: () {}, child: Text("button")),
                Text(
                  "Welcome to GeeksforGeeks!!!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
                  ),
                ),
              ],
            ),
          ),
          drawer: Drawer(
              child: ListView(
            children: [
              DrawerHeader(
                child: Text("Draw Header"),
                decoration: BoxDecoration(color: Colors.green),
              ),
              ListTile(
                onTap: () {
                  print("ITEM 1 pressed");
                },
                leading: Icon(Icons.people),
                title: Text("ITEM 1"),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
              ),
              ListTile(
                onTap: () {
                  print("ITEM 1 pressed");
                },
                leading: Icon(Icons.mail),
                title: Text("ITEM 1"),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
              )
            ],
          )),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: 0,
              fixedColor: Colors.green,
              items: const [
                BottomNavigationBarItem(
                  label: "Home",
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: "Search",
                  icon: Icon(Icons.search),
                ),
                BottomNavigationBarItem(
                  label: "Profile",
                  icon: Icon(Icons.account_circle),
                ),
              ],
              onTap: (int indexOfItem) {}),
        ));
  }
}



// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: "my first app",
//         theme: ThemeData(primarySwatch: Colors.blue),
//         darkTheme: ThemeData(primarySwatch: Colors.blue),
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text("Main Page"),
//             actions: [
//               IconButton(onPressed: () {}, icon: Icon(Icons.search)),
//               IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
//             ],
//           ),
//           body: Center(child: Text("This is my app")),
//           drawer: Drawer(
//               child: ListView(
//             children: [
//               DrawerHeader(
//                 child: Text("Draw Header"),
//                 decoration:
//                     BoxDecoration(color: Color.fromARGB(255, 222, 200, 4)),
//               ),
//               ListTile(
//                 onTap: () {
//                   print("menu 1 pressed");
//                 },
//                 leading: Icon(Icons.abc),
//                 title: Text("menu1"),
//                 trailing:
//                     IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
//               )
//             ],
//           )),
//         ));
//   }
// }
