import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 2;

  @override
  Widget build(BuildContext context) {
    final List _titles = [
      "Beginner's Guide",
      "Earn",
      "Binance Learn and Earn",
      "How to deposit EUR & GBP",
    ];
    final List _subtitles = [
      "Learn how to get started",
      "Earn Crypto while you sleep",
      "Earn FREE Crypto while exploring Blockchain",
      "Try Bank Transfer via SEPA",
    ];
    List<Widget> _pages = <Widget>[
      Scaffold(
        backgroundColor: Color(0xff202630),
        body: Center(
          child: Column(
            children: <Widget> [
              SizedBox(height: 60),
              Image.asset(("assets/Binance.png"),
                  height: 100,
                  width: 100),
              SizedBox(height: 20),
              Text ("Welcome to Binance",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        minimumSize: Size(150, 40),
                      ),
                      onPressed: () {},
                      child: Text('Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amberAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        minimumSize: Size(150, 40),
                      ),
                      onPressed: () {},
                      child: Text('Log In',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10,20,10,0),
                height: 100,
                width: double.maxFinite,
                color: Colors.transparent,
                child: ListView.builder(itemCount: _titles.length, itemBuilder: (context, index){
                  return HelpCards(title: _titles[index], subtitle: _subtitles[index],);
                },
                  scrollDirection: Axis.horizontal,
                  physics: PageScrollPhysics(),),
              ),
            ],
          ),
        ),
      ),
      Icon(
        Icons.chat,
        size: 150,
      ),
      Scaffold(
        backgroundColor: Color(0xff202630),
        body: Center(
          child: Column(
              children: <Widget> [
                SizedBox(height: 300),
                Image.asset(("assets/Binance.png"),
                    height: 100,
                    width: 100),
                SizedBox(height: 20),
                Text ("Welcome to Binance",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 200),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget> [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          minimumSize: Size(150, 40),
                        ),
                        onPressed: () {},
                        child: Text('Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amberAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          minimumSize: Size(150, 40),
                        ),
                        onPressed: () {},
                        child: Text('Log In',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]
                ),
              ]
          ),
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: Color(0xff202630),
      body: Center(
        child: _pages.elementAt(_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Color(0xff202630),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(NetworkImage(
                "http://clipart-library.com/images/8c68ReMei.png")),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(NetworkImage(
                "http://clipart-library.com/images_k/transparent-diamond-shape/transparent-diamond-shape-9.png")),
            label: 'Buy',
            backgroundColor: Colors.amberAccent,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(NetworkImage(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Font_Awesome_5_solid_wallet.svg/1024px-Font_Awesome_5_solid_wallet.svg.png")),
            label: 'Wallet',
          ),
        ],
        selectedItemColor: Colors.white70,
        currentIndex: _index,
        onTap: _onTapped,
      ),
    );
  }

  void _onTapped(int index) {
    setState(() {
      _index = index;
    });
  }
}

class HelpCards extends StatelessWidget {
  final String title, subtitle;

  HelpCards({required this.title, required this.subtitle});
  
  @override
  Widget build(BuildContext context) {

    return Container(
      width: 370.0,
      child: Card(
        color: Colors.black12,
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              ),
              Text(subtitle,
                style: TextStyle(
                  color: Colors.white70,
//fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


