import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: TextTheme(
            headline2: TextStyle(color: Colors.deepPurpleAccent),
            bodyText2: TextStyle(color: Colors.white),
          ),
          // This is the theme of your application.
          scaffoldBackgroundColor: Colors.black
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.

          ),
      home: const MyHomePage(title: 'Sombok'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        elevation: 0,
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back_ios_new_rounded),

        actions: <Widget>[
          Container(
            width: 60,
            height: 60,
            child: const Icon(
              Icons.more_horiz_rounded,
              size: 20,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Color.fromARGB(255, 8, 10, 10)),
          ),
        ],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(widget.title),
        ]),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(2), // Border radius
                    child: ClipOval(
                        child: Image.network(
                            'https://picsum.photos/256?image=888')),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                child: const Text("Osman Ahmed"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Column(
                  children: const [
                    Text("123"),
                    Text(
                      "Following",
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  children: const [Text("10M"), Text("Followers")],
                ),
                const Spacer(),
                Column(
                  children: const [Text("199"), Text("Videos")],
                ),
                const Spacer()
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    height: 30,
                    width: 300,
                    child: GlowButton(
                      color: Color.fromARGB(255, 107, 7, 124),
                      onPressed: () {},
                      child: Text(
                        "Follow",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      width: 100,
                      height: 40,
                      child: const Icon(
                        Icons.storefront_rounded,
                        size: 20,
                        color: Colors.white10,
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 8, 10, 10)),
                    )),
              ],
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16.0, right: 10, left: 10),
                    child: Container(
                      padding: const EdgeInsets.all(2), // Border radius
                      child: ClipRRect(
                          child: Image.network(
                              'https://picsum.photos/256?image=883')),
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0, right: 10, left: 10),
                    child: Container(
                      padding: const EdgeInsets.all(2), // Border radius
                      child: ClipRRect(
                          child: Image.network(
                              'https://picsum.photos/256?image=1000')),
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0, right: 10, left: 10),
                    child: Container(
                      padding: const EdgeInsets.all(2), // Border radius
                      child: ClipRRect(
                          child: Image.network(
                              'https://picsum.photos/256?image=913')),
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0, right: 10, left: 10),
                    child: Container(
                      padding: const EdgeInsets.all(2), // Border radius
                      child: ClipRRect(
                          child: Image.network(
                              'https://picsum.photos/256?image=863')),
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
    // ),
    //floatingActionButton: FloatingActionButton(
    //onPressed: _incrementCounter,
    //tooltip: 'Increment',
    //child: const Icon(Icons.add),
    //), // This trailing comma makes auto-formatting nicer for build methods.
    //  );
  }
}
