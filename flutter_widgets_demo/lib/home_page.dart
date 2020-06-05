import 'package:flutter/material.dart';
import './botoes_page.dart';
import './cards_page.dart';
import './listas_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String avatarPicture =
      'https://scontent.fgru5-1.fna.fbcdn.net/v/t1.0-9/78424935_10215448361177553_2284904661393604608_n.jpg?_nc_cat=103&_nc_ohc=Q3LZeQdI4jgAQn20f-qiG7lJH-kEfOXjt8cnAgLxkK7qtoIFp5-OOnnog&_nc_ht=scontent.fgru5-1.fna&oh=f761536124e40549852a98294a159686&oe=5EB0D48E';
  String boxPicture =
      'http://www.antlia.com.br/wp-content/uploads/2019/07/letras.png';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Widgets App'),
        backgroundColor: Colors.red,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Marcos Almeida"),
              accountEmail: new Text("prog.marcos@gmail.com"),
              currentAccountPicture: new GestureDetector(
                onTap: () => print('Toque na tela'),
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(avatarPicture),
                ),
              ),
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      fit: BoxFit.fill, image: new NetworkImage(boxPicture))),
            ),
            new ListTile(
                title: new Text("Botões"),
                trailing: new Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext contetext) => new BotoesPage()));
                }),
            new ListTile(
                title: new Text("Listas"),
                trailing: new Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext contetext) => new ListasPage()));
                }),
            new ListTile(
                title: new Text("Cards"),
                trailing: new Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext contetext) => new CardsPage()));
                }),
            new Divider(),
            new ListTile(
                title: new Text("Cancelar"),
                trailing: new Icon(Icons.close),
                onTap: () {
                  Navigator.of(context).pop();
                })
          ],
        ),
      ),
      body: new Center(
        child: new Text('Olá mundo'),
      ),
    );
  }
}
