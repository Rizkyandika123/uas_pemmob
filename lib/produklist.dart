import 'package:flutter/material.dart';
import './detailproduk.dart';

class Produklist extends StatefulWidget {
  @override
  _ProduklistState createState() => _ProduklistState();
}

class _ProduklistState extends State<Produklist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Daftar Kue"),
        backgroundColor: Colors.red[400],
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Kue Coklat",
                  description: "Kue dengan rasa coklat",
                  price: 100000,
                  image: "1.jpg",
                  star: 4,
                ),
              ));
            },
            child: ProductBox(
                name: "Kue Coklat ",
                description: "Kue dengan rasa coklat",
                price: 100000,
                image: "1.jpg",
                star: 4),
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
                  name: "Kue Strawbery",
                  description: "Kue dengan rasa strawbery",
                  price: 90000,
                  image: "3.jpg",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                name: "Kue Strawbery",
                description: "Kue dengan rasa strawbery",
                price: 90000,
                image: "3.jpg",
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
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  name: "Kue Cream",
                  description: "Kue dengan rasa krim yang lezat",
                  price: 75000,
                  image: "5.jpg",
                  star: 3,
                ),
              ));
            },
            child: ProductBox(
                name: "Kue Cream",
                description: "Kue dengan rasa krim yang lezat",
                price: 75000,
                image: "5.jpg",
                star: 3),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];

  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.deepOrange,
      ));
    }
    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset(
                "assets/kue/" + image,
                width: 150,
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            this.name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(this.description),
                          Text(
                            "Price: " + this.price.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          Row(
                            children: <Widget>[
                              Row(
                                children: children,
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
