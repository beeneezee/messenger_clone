import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    final height = screen.height / 8;
    final _bottomnav = new Container(
      height: height * 0.75,
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.message), title: Text('Chats')),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), title: Text('People')),
        ],
      ),
    );
    final friends = [
      'Suzana Belay',
      'Henok Mokenen',
      'Merhawi Tikue',
      'Suzana belay',
      'Gezae Goitom',
      'Lwam Beraki',
      'Selam Berhe',
      'Tesfabrhan M. Naizghi'
    ];
    final images = [
      'assets/a.jpg',
      'assets/b.jpg',
      'assets/c.jpg',
      'assets/d.jpg',
      'assets/e.jpg',
      'assets/f.jpg',
      'assets/g.jpg',
      'assets/i.jpg'
    ];
    final texts = [
      'Hi',
      'hello',
      'selam dyu',
      'hi there',
      'hows everything',
      'hows life',
      'hey selu',
      'tesfie'
    ];

    final _listview = new SingleChildScrollView(
      child: Container(
        height: height * 5,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: ListView.builder(
                  padding: EdgeInsets.all(1),
                  itemCount: friends.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: CircleAvatar(
                                // child: Image.asset('assets/a.jpg'),
                                radius: 30,
                                backgroundImage: AssetImage(images[index])),
                            title: Text(friends[index]),
                            subtitle: Text(texts[index]),
                            // trailing: Text(_age(snapshot.data[index])),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );

    final _row = new Container(
      alignment: Alignment.center,
      height: height / 2,
      child: Padding(
          padding: EdgeInsets.fromLTRB(32, 5, 0, 0),
          child: Row(children: <Widget>[
            CircleAvatar(
                radius: 20, backgroundImage: AssetImage('assets/b.jpg')),
            CircleAvatar(
                radius: 20, backgroundImage: AssetImage('assets/c.jpg')),
            CircleAvatar(
                radius: 20, backgroundImage: AssetImage('assets/d.jpg')),
            CircleAvatar(
                radius: 20, backgroundImage: AssetImage('assets/e.jpg')),
            CircleAvatar(
                radius: 20, backgroundImage: AssetImage('assets/f.jpg')),
            CircleAvatar(
                radius: 20, backgroundImage: AssetImage('assets/g.jpg')),
            CircleAvatar(
                radius: 20, backgroundImage: AssetImage('assets/h.jpg')),
            CircleAvatar(
                radius: 20, backgroundImage: AssetImage('assets/i.jpg')),
          ])),
    );

    final _search = new Container(
      height: height / 2,
      child: Row(
        children: <Widget>[
          Container(
              width: screen.width,
              child: TextField(
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  border: InputBorder.none,
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.black26, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(28.0)),
                    borderSide: BorderSide(color: Colors.black26, width: 2),
                  ),
                ),
              )),
        ],
      ),
    );

    final _account = new Container(
      height: height,
      child: Row(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(radius: 32, backgroundImage: AssetImage('assets/h.jpg'))
          ),
          Text(
            ' Chats',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Spacer(),
          MaterialButton(
            onPressed: () {},
            color: Colors.blueGrey,
            textColor: Colors.white,
            child: Icon(
              Icons.camera_alt,
              size: 20,
            ),
            padding: EdgeInsets.all(20),
            shape: CircleBorder(),
          ),
          MaterialButton(
            onPressed: () {},
            color: Colors.blueGrey,
            textColor: Colors.white,
            child: Icon(
              Icons.edit,
              size: 20,
            ),
            padding: EdgeInsets.all(20),
            shape: CircleBorder(),
          ),
        ],
      ),
    );

    //lets add all the elements to the screen now
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            _account,
            _search,
            _row,
            _listview,
            _bottomnav,
          ],
        ),
      ),
    );
  }
}
