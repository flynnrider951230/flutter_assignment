import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_tugas/model/my_watchlist.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'package:flutter_tugas/page/data.dart'; 
import 'package:flutter_tugas/page/form.dart'; 
import 'package:flutter_tugas/page/my_watchlist_page.dart'; 


class MyWatchlistDetailPage extends StatelessWidget {
    const MyWatchlistDetailPage({super.key});

    // final Argument watchlist; 
    @override
    Widget build(BuildContext context){
        final MyWatchlist args = ModalRoute.of(context)!.settings.arguments as MyWatchlist;
        return Scaffold(
            appBar: AppBar(
                title: Text('Detail'),
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
            body: Container(
                // margin: const EdgeInsets.fromLTRB(5, 10, 5, 15),
                margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 20, ),
                padding: const EdgeInsets.all(20.0),
                child: Stack(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                        Center(
                            heightFactor: 0.5, 
                            child: Container(
                                // padding: EdgeInsets.all(20),
                                margin: const EdgeInsets.only(bottom: 100, ),
                                child: Text(
                                    args.fields.title.toString(),
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,),
                                    
                                ),
                            ),
                            
                        ),
                         

                        RichText(
                            text: TextSpan(
                                style: const TextStyle(color: Colors.black,),
                                children: [
                                    const TextSpan(text:'Release Date:  ', style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: args.fields.releaseDate.toString()), 
                                    const TextSpan(text: '\n', ),
                                    const TextSpan(text:'\nRating:  ', style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: '${args.fields.rating.toString()}/5'), 
                                     const TextSpan(text: '\n', ),
                                    const TextSpan(text:'\nStatus:  ', style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: args.fields.watched.toString()), 
                                     const TextSpan(text: '\n', ),
                                    const TextSpan(text:'\nReview:  ', style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: args.fields.review.toString()), 
                                ],
                            ),
                            
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                                child: Container(
                                width: double.infinity,
                                height: 40,
                                child: ElevatedButton(
                                    onPressed: () {
                                    Navigator.pop(context);
                                    },
                                    child: const Text('Back'),
                                ),
                            ),
                        )
                    ]
                ),
            ),
        );
    }
}
