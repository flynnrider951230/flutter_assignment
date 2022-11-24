import 'package:flutter/material.dart';
import 'page/data.dart'; 
import 'page/form.dart'; 
import 'page/my_watchlist_page.dart'; 
import 'package:flutter_tugas/page/detail_page_my_watchlist.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Program Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      routes:{
        '/detail': (context) => const MyWatchlistDetailPage(), 
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  final String title = 'Program Counter Home Page';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter(){
    setState(() {
      if(_counter > 0){
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('counter_7'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AddBudgetPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const DataBudgetPage()),
              );
            },
          ),
          ListTile(
            title: const Text('My Watch List'),
            onTap: () {
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyWatchlistPage()),
                );
            },
          ),
        ],
      ),
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if(_counter.isEven)...[
              Text(
                'GENAP',
                style: TextStyle(color: Colors.red),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ] else...[
              Text(
                'GANJIL',
                style: TextStyle(color: Colors.blue),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ]
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: FloatingActionButton(
              onPressed: _incrementCounter,
              child: const Icon(Icons.add),
            ),
          ),
          Container(
            child: FloatingActionButton(
              onPressed: _decrementCounter,
              child: const Icon(Icons.remove),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
