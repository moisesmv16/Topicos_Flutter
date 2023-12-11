import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 214, 17),
      appBar: AppBar(title: Text('Flutter Topicos'),),
      drawer: Drawer(
        child: ListView(
          children: [
           const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/'),
              ),
              accountName: Text('Moises Maldonado Villaseñor :'),
              accountEmail: Text('21030628@itcelaya.edu.mx'),
            ),
            ListTile(
              title: Text('Conversor'),
              subtitle: Text('Temperatura'),
              trailing: Icon(Icons.chevron_right),
              leading: Icon(Icons.thermostat),
              onTap:(){
                Navigator.pushNamed(context, "/temp");
              },
            ),
             ListTile(
              title: Text('Intensiones'),
              subtitle: Text('Micelanea'),
              trailing: Icon(Icons.chevron_right),
              leading: Icon(Icons.phone_android),
              onTap:(){
                Navigator.pushNamed(context, "/int");
              },
            ),
            ListTile(
              title: Text('Peliculas movie'),
              subtitle: Text('Lista de peliculas'),
              trailing: Icon(Icons.chevron_right),
              leading: Icon(Icons.phone_android),
              onTap:(){
                Navigator.pushNamed(context, "/movie");
              },
            ),
             ListTile(
              title: Text('Login de tarea'),
              subtitle: Text('Bienvenido'),
              trailing: Icon(Icons.chevron_right),
              leading: Icon(Icons.app_registration),
              onTap:(){
                Navigator.pushNamed(context, "/logi");
              },
            ),
            ListTile(
              title: Text('App Fruta'),
              subtitle: Text('Holi de kiwi'),
              trailing: Icon(Icons.chevron_right),
              leading: Icon(Icons.app_settings_alt),
              onTap:(){
                Navigator.pushNamed(context, "/fruta");
              },
            ),
            ListTile(
              title: Text('Planetas'),
              subtitle: Text('Disfruta'),
              trailing: Icon(Icons.chevron_right),
              leading: Icon(Icons.app_settings_alt),
              onTap:(){
                Navigator.pushNamed(context, "/planeta");
              },
            )
          ],
        ),
      ),
    );
  }
}