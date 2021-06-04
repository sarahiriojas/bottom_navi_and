import 'package:flutter/material.dart';
import 'package:riojas/paginas_tabs/pagina1.dart';
import 'package:riojas/paginas_tabs/pagina2.dart';
import 'package:riojas/paginas_tabs/pagina3.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, title: "Usando Tabs Katia Riojas", home: MiCasa()));
}

class MiCasa extends StatefulWidget {
  @override
  MiCasaState createState() => MiCasaState();
}

class MiCasaState extends State<MiCasa> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();

    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar de Riojas"),
        backgroundColor: Colors.purpleAccent[400],
      ),
      body: TabBarView(
        children: <Widget>[
          PrimerTab(),
          SegundoTab(),
          TercerTab()
        ],
        controller: controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.purpleAccent[400],
        child: TabBar(
          tabs: <Tab>[
            Tab(
              icon: Icon(Icons.cake),
            ),
            Tab(
              icon: Icon(Icons.audiotrack),
            ),
            Tab(
              icon: Icon(Icons.accessibility_new_rounded),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}
