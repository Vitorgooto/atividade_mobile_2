import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(title: Text('Dashboard'), onTap: () => Navigator.pushNamed(context, '/home')),
          ListTile(title: Text('Itens de Pesca'), onTap: () => Navigator.pushNamed(context, '/list')),
          ListTile(title: Text('Adicionar Item'), onTap: () => Navigator.pushNamed(context, '/form')),
        ],
      ),
    );
  }
}
