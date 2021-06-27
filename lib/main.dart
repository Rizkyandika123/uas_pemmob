import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas_pemmob/authentication_services.dart';
import 'package:uas_pemmob/home_page.dart';
import 'package:uas_pemmob/produklist.dart';
import 'package:uas_pemmob/signin_page.dart';
import 'daftar_pesanan.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<AuthenticationService>(
            create: (_) => AuthenticationService(FirebaseAuth.instance),
          ),
          StreamProvider(
            create: (context) =>
                context.read<AuthenticationService>().authStateChanges,
          ),
        ],
        child: MaterialApp(
          title: 'Uas PEmob',
          theme: ThemeData(
            primarySwatch: Colors.red,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: AuthenticationWrapper(),
          routes: {
            '/r': (context) => Pengiriman(),
            '/kontak': (context) => Kontak(),
            '/produklist': (context) => Produklist(),
            '/daftar': (context) => Home(),
            '/entryform': (context) => Home(),
            '/wishlist': (context) => Wishlist(),
            '/account': (context) => Account(),
            '/setting': (context) => Setting(),
            '/about': (context) => About(),
            
          },
        ));
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      return HomePage();
    }
    return SignInPage();
  }
}

class Pengiriman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Pengiriman"),
        backgroundColor: Colors.red[400],
      ),
      body: new Center(
        child: new Icon(
          Icons.delivery_dining,
          size: 50,
        ),
      ),
    );
  }
}


