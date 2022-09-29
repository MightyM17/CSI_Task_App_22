import 'package:flutter/material.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:coingecko_api/coingecko_api.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 2;
  CoinGeckoApi api = CoinGeckoApi();
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

    final _coinsInfo = [
      {
        'name' : 'Bitcoin',
        'short' : 'BTC',
        'val' : 19239.82,
        'percentage' : -0.81,
      },
      {
        'name' : 'Ethereum',
        'short' : 'ETH',
        'val' : 1325.91,
        'percentage' : 0.40,
      },
      {
        'name' : 'BNB',
        'short' : 'BNB',
        'val' : 281.00,
        'percentage' : 1.04,
      },
      {
        'name' : 'TetherUS',
        'short' : 'USDT',
        'val' : 1.01,
        'percentage' : -1.12,
      },
      {
        'name' : 'Ripple',
        'short' : 'ETH',
        'val' : 0.4312,
        'percentage' : -1.12,
      },
      {
        'name' : 'Solana',
        'short' : 'SOL',
        'val' : 33.66,
        'percentage' : 2.16,
      },
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
                  physics: PageScrollPhysics(),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20,10,10,0),
                  child: Stack(children: <Widget>[
                    Align(
                    alignment: Alignment.centerLeft,
                    child:Text('Coin',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                ),
                      ],
                ),
                      ),
              Container(
                padding: EdgeInsets.fromLTRB(10,0,10,0),
                height: 310,
                width: double.maxFinite,
                color: Colors.transparent,
                child: ListView.builder(itemCount: _coinsInfo.length, itemBuilder: (context, index){
                  return Coins(name:((_coinsInfo[index])['name']).toString(), short:((_coinsInfo[index])['short']).toString(), val:double.parse(((_coinsInfo[index])['val']).toString()), percent:double.parse((_coinsInfo[index])['percentage'].toString()),);
                },
                  physics: PageScrollPhysics(),
                ),
              ),
            ],
          ),
        ),
      ),
      Scaffold(
        backgroundColor: Color(0xff202630),
        body: Container(
          child: Align(
            alignment: Alignment.center,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amberAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              minimumSize: Size(150, 40),
            ),
            onPressed: () {},
            child: Text('Buy Crypto with KES',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
    ),
        ),
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
                SizedBox(height: 230),
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

class Coins extends StatelessWidget {
  final String name, short;
  final double val, percent;

  Coins({required this.name, required this.short, required this.val, required this.percent, });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Color(0xff202630),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      CryptoFontIcons.BTC,
                      size: 20,
                      ),
                    SizedBox(width: 20),
                    Text(name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(short,
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 14,
                      ),
                    ),
                    ],
              ),
              SizedBox(width: 80),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text("\$$val",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text("$percent%",
                    style: TextStyle(
                      color: percent>0 ? Colors.green : Colors.red,
                      fontSize: 14,
                    ),
                  ),
                ],
              )
              ],
      ),
    ),
    ),
  );
  }
}


