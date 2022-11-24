import 'package:flutter/material.dart';
import 'package:flutter_tugas/page/form.dart'; 
import 'package:flutter_tugas/page/my_watchlist_page.dart'; 
import '../main.dart';

class DataBudgetPage extends StatefulWidget {
    const DataBudgetPage({super.key}); 

    @override
  State<DataBudgetPage> createState() => _DataBudgetPageState();

}

class _DataBudgetPageState extends State<DataBudgetPage>{
    final _formKey = GlobalKey<FormState>(); 

    @override
    Widget build(BuildContext context){

        return Scaffold(
            appBar: AppBar(
                title: Text('Data Budget'),
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
            body: Column(
                children: <Widget>[
                    Expanded(
                        child: ListView.builder(
                            itemCount: judul.length, 
                            itemBuilder: (context, index){
                                return Card(
                                    child: Column(
                                            children: <Widget> [
                                                Padding(
                                                    padding: EdgeInsets.all(8.0),
                                                    child: Row(
                                                         mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                            Text(judul[index], style: TextStyle(fontSize: 20.0),),
                                                        ], 
                                                    ),
                                                    
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.all(8.0),
                                                    child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                            Text(nominal[index][0]),
                                                            Text(nominal[index][1]),
                                                        ],
                                                    ),
                                                    
                                                ),
                                                
                                        ],
                                    ),
                                );
                            }, 
                        ), 
                    )
                ], 
            ),
        );
    }
}
