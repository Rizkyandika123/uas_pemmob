import 'package:flutter/material.dart';
import 'package:uas_pemmob/authentication_services.dart';
import 'package:provider/provider.dart';
import 'detailproduk.dart';
import 'produklist.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        
        centerTitle: true,
        title: Text("Tokokue"),
        backgroundColor: Colors.red[400],
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.red[80],
          shadowColor: Colors.red,
        ),
        child: new Drawer(
          child: new ListView(
          
            children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("I Putu Rizky Andika"),
              accountEmail: new Text("rizky.andika@undiksha.ac.id"),
              currentAccountPicture: new GestureDetector(
                onTap: () {},
                child: new CircleAvatar(
                  backgroundColor: Colors.red[400],
                  backgroundImage: AssetImage("assets/appimages/profile.jpg"),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/appimages/bg1.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            new ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/wishlist');
              },
              title: Text("Wishlist"),
              trailing: IconButton(
                icon: new Icon(Icons.bookmark),
                onPressed: () {
                  Navigator.pushNamed(context, '/wishlist');
                },
              ),
            ),
            new ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/account');
              },
              title: Text("Account"),
              trailing: IconButton(
                icon: new Icon(Icons.verified_user),
                onPressed: () {
                  Navigator.pushNamed(context, '/account');
                },
              ),
            ),
            new ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/setting');
              },
              title: Text("Setting"),
              trailing: IconButton(
                icon: new Icon(Icons.settings),
                onPressed: () {
                  Navigator.pushNamed(context, '/setting');
                },
              ),
            ),
            new ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
              title: new Text("About"),
              trailing: new IconButton(
                icon: new Icon(
                  Icons.info,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
              ),
            ),
            new ListTile(
              onTap: () {
                context.read<AuthenticationService>().signOut();
              },
              title: Text("Logout"),
              trailing: IconButton(
                icon: new Icon(Icons.logout),
                onPressed: () {
                  context.read<AuthenticationService>().signOut();
                },
              ),
            ),
          ],
        ),
        ),
      ),

      body: new ListView(children: <Widget>[
        //edit

        Image.asset("assets/appimages/bg2.jpg"),

        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
              color: Theme.of(context).dividerColor,
            )),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: new Icon(Icons.phone),
                    iconSize: 40,
                    color: Colors.deepOrange[900],
                    onPressed: () {
                      Navigator.pushNamed(context, '/kontak');
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      "Kontak",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.deepOrange[900],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: new Icon(Icons.shop),
                    iconSize: 40,
                    color: Colors.deepOrange[900],
                    onPressed: () {
                      Navigator.pushNamed(context, '/daftar');
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      "Daftar Pesanan",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.deepOrange[900],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: new Icon(Icons.delivery_dining),
                    iconSize: 40,
                    color: Colors.deepOrange[900],
                    onPressed: () {
                      Navigator.pushNamed(context, '/r');
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      "Pengiriman",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.deepOrange[900],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: new Icon(Icons.cake),
                    iconSize: 40,
                    color: Colors.deepOrange[900],
                    onPressed: () {
                      Navigator.pushNamed(context, '/produklist');
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      "Daftar Kue",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.deepOrange[900],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/appimages/bg3.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Produk Terlaris",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      "Rekomendasi untuk anda",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        new GestureDetector(
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => DetailProduk(
                name: "Kue Coklat Karamel",
                description: "Kue dengan rasa coklat karamel",
                price: 150000,
                image: "2.jpg",
                star: 5,
              ),
            ));
          },
          child: ProductBox(
              name: "Kue Coklat Karamel",
              description: "Kue dengan rasa coklat karamel",
              price: 150000,
              image: "2.jpg",
              star: 5),
        ),

        new GestureDetector(
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => DetailProduk(
                name: "Kue Cokelat Spesial",
                description: "Kue dengan rasa cokelat spesial",
                price: 200000,
                image: "4.jpg",
                star: 5,
              ),
            ));
          },
          child: ProductBox(
              name: "Kue Cokelat Spesial",
              description: "Kue dengan rasa cokelat spesial",
              price: 200000,
              image: "4.jpg",
              star: 5),
        ),


      ]),
    );
  }
}

class Kontak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Kontak"),
        backgroundColor: Colors.red[400],
      ),
      body: new Center(
        child: new Icon(
          Icons.phone,
          size: 50,
        ),
      ),
    );
  }
}

class Wishlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Wishlist"),
        backgroundColor: Colors.red[400],
      ),
      body: new Center(
        
      ),
    );
  }
}

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Account"),
        backgroundColor: Colors.red[400],
      ),
      body: new Center(
        
      ),
    );
  }
}

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Settings"),
        backgroundColor: Colors.red[400],
      ),
      body: new Center(
        
          
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("About"),
        backgroundColor: Colors.red[400],
      ),
      body: new Center(
        
      ),
    );
  }
}
