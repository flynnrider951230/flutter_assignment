import 'package:flutter/material.dart';
import '../main.dart';
import 'package:flutter_tugas/page/data.dart'; 
import 'package:flutter_tugas/page/my_watchlist_page.dart'; 
import 'package:flutter/services.dart';

var judul = []; 
var nominal = []; 
var tipebudget = []; 
class AddBudgetPage extends StatefulWidget {
    const AddBudgetPage({super.key});

    @override
    State<AddBudgetPage> createState() => _AddBudgetPageState();
}

class _AddBudgetPageState extends State<AddBudgetPage> {
    final _formKey = GlobalKey<FormState>();
    String _judul = "";
    String _nominal = "";
    String? tipeBudget;
    List<String> listTipeBudget = ['Pemasukan', 'Pengeluaran',];
   
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Form'),
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
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                            children: [
                                Padding(
                                    // Menggunakan padding sebesar 8 pixels
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "Judul",
                                            labelText: "Judul",
                                            // Menambahkan circular border agar lebih rapi
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5.0),
                                            ),
                                        ),
                                        // Menambahkan behavior saat nama diketik 
                                        onChanged: (String? value) {
                                            setState(() {
                                                _judul = value!;
                                            });
                                        },
                                        // Menambahkan behavior saat data disimpan
                                        onSaved: (String? value) {
                                            setState(() {
                                                _judul = value!;
                                            });
                                        },
                                        // Validator sebagai validasi form
                                        validator: (String? value) {
                                            if (value == null || value.isEmpty) {
                                                return 'Judul tidak boleh kosong!';
                                            }
                                            return null;
                                        },
                                    ),
                                ),
                                Padding(
                                    // Menggunakan padding sebesar 8 pixels
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: InputDecoration(
                                            hintText: "Nominal",
                                            labelText: "Nominal",
                                            // Menambahkan circular border agar lebih rapi
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5.0),
                                            ),
                                        ),
                                        // Menambahkan behavior saat nama diketik 
                                        onChanged: (String? value) {
                                            setState(() {
                                                _nominal = value!;
                                            });
                                        },
                                        // Menambahkan behavior saat data disimpan
                                        onSaved: (String? value) {
                                            setState(() {
                                                _nominal = value!;
                                            });
                                        },
                                        // Validator sebagai validasi form
                                        validator: (String? value) {
                                            if (value == null || value.isEmpty) {
                                                return 'Nominal tidak boleh kosong!';
                                            }
                                            return null;
                                        },
                                    ),
                                ),
                                ListTile(
                                title: const Text(
                                    'Pilih Jenis',
                                ),
                                trailing: DropdownButton(
                                    value: tipeBudget,
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    items: listTipeBudget.map((String items) {
                                    return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                    );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                    setState(() {
                                        tipeBudget = newValue ?? "";
                                     });
                                    },
                                ),
                                ),
                            ],
                        ), 
                    ), 
                ), 
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: Container(
                padding: const EdgeInsets.all(15),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    TextButton(
                    child: const Text(
                        "Simpan",
                        style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed: () {
                        if (_formKey.currentState!.validate()) {
                        judul.add(_judul); 
                        nominal.add([_nominal, tipeBudget]); 
                        showDialog(
                            context: context,
                            builder: (context) {
                            return Dialog(
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 15,
                                child: Container(
                                child: ListView(
                                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                                    shrinkWrap: true,
                                    children: <Widget>[
                                    Center(
                                        child:
                                            Text('Data Berhasil Disimpan.')),
                                    SizedBox(height: 20),
                                    TextButton(
                                        onPressed: () {
                                        Navigator.pop(context);
                                        },
                                        child: Text('Kembali'),
                                    ),
                                    ],
                                ),
                                ),
                            );
                            },
                        );
                        }
                    },
                    ),
                ],
                ),
            ),
        );
    }
}
