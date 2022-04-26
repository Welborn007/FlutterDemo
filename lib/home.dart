import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyStatelessWidget(),
        theme: ThemeData(
            appBarTheme: AppBarTheme(
          color: const Color(0xFF347235),
        )),
        debugShowCheckedModeBanner: false);
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore By'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.camera),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'This is the home page',
          style: TextStyle(fontSize: 24),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Vasai birds',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: const Color(0xFF347235)),
            ),
            ListTile(
              leading: SizedBox(
                  height: 30.0,
                  width: 30.0, // fixed width and height
                  child: Image.asset("images/dove.png")),
              title: Text('All Birds'),
            ),
            Divider(),
            ListTile(
              leading: SizedBox(
                  height: 30.0,
                  width: 30.0, // fixed width and height
                  child: Image.asset("images/clipboard.png")),
              title: Text('Life List'),
            ),
            Divider(),
            ListTile(
              leading: SizedBox(
                  height: 30.0,
                  width: 30.0, // fixed width and height
                  child: Image.asset("images/map.png")),
              title: Text('Bird Topography'),
            ),
            Divider(),
            ListTile(
              leading: SizedBox(
                  height: 30.0,
                  width: 30.0, // fixed width and height
                  child: Image.asset("images/balance-scale.png")),
              title: Text('Birding Ethics'),
            ),
            Divider(),
            ListTile(
              leading: SizedBox(
                  height: 30.0,
                  width: 30.0, // fixed width and height
                  child: Image.asset("images/newspaper-folded.png")),
              title: Text('News'),
            ),
            Divider(),
            ListTile(
              leading: SizedBox(
                  height: 30.0,
                  width: 30.0, // fixed width and height
                  child: Image.asset("images/group.png")),
              title: Text('The Team'),
            ),
            Divider(),
            ListTile(
              leading: SizedBox(
                  height: 30.0,
                  width: 30.0, // fixed width and height
                  child: Image.asset("images/refer.png")),
              title: Text('References & Credits'),
            ),
            Divider(),
            ListTile(
              leading: SizedBox(
                  height: 30.0,
                  width: 30.0, // fixed width and height
                  child: Image.asset("images/call.png")),
              title: Text('Contact Us'),
            ),
          ],
        ),
      ),
    );
  }
}
