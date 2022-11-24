import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_tugas/model/my_watchlist.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'package:flutter_tugas/page/data.dart'; 
import 'package:flutter_tugas/page/form.dart'; 
import 'package:flutter_tugas/page/detail_page_my_watchlist.dart'; 


class MyWatchlistPage extends StatefulWidget {
    const MyWatchlistPage({Key? key}) : super(key: key);

    @override
    _MyWatchlistPageState createState() => _MyWatchlistPageState();
}

class _MyWatchlistPageState extends State<MyWatchlistPage> {
    Future<List<MyWatchlist>> fetchMyWatchlist() async {
        var url = Uri.parse('http://tugaspbpshafa.herokuapp.com/mywatchlist/json/');
        var response = await http.get(
        url,
        headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
        },
        );

        // melakukan decode response menjadi bentuk json
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        List<MyWatchlist> listMyWatchlist = [];
        for (var d in data) {
        if (d != null) {
            listMyWatchlist.add(MyWatchlist.fromJson(d));
        }
        }

        return listMyWatchlist;
    }

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: const Text('My Watch List'), 
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
                                MaterialPageRoute(builder: (context) => const MyHomePage(),
                                )
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
            body: FutureBuilder(
                future: fetchMyWatchlist(),
                builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.data == null) {
                        return const Center(child: CircularProgressIndicator());
                    } else {
                        if (!snapshot.hasData) {
                            return Column(
                            children: const [
                                Text(
                                "Tidak ada my watchlist :(",
                                style: TextStyle(
                                    color: Color(0xff59A5D8),
                                    fontSize: 20),
                                ),
                                SizedBox(height: 8),
                            ],
                            );
                        } else {
                            return ListView.builder(
                                itemCount: snapshot.data!.length,
                                itemBuilder: (_, index)=> InkWell(
                                    onTap:(){
                                        Navigator.pushNamed(
                                            context, 
                                            "/detail", 
                                            arguments: snapshot.data![index],
                                            // MaterialPageRoute(builder:(context) => const MyWatchlistDetailPage(snapshot.data![index]))
                                        );
                                    },
                                    child: Container(
                                        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                        padding: const EdgeInsets.all(20.0),
                                        decoration: BoxDecoration(
                                            color:Colors.white,
                                            borderRadius: BorderRadius.circular(15.0),
                                            boxShadow: const [
                                                BoxShadow(
                                                    color: Colors.black,
                                                    blurRadius: 2.0
                                                )
                                            ]
                                        ),
                                        child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                Text(
                                                    "${snapshot.data![index].fields.title}",
                                                    style: const TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                                const SizedBox(height: 10),
                                            ],
                                        ),
                                    ),
                                ),
                            );
                        }
                    }
                }
            )
        );
    }
}