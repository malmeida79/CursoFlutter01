import 'package:flutter/material.dart';

class BotoesPage extends StatefulWidget {
  @override
  _BotoesPageState createState() => new _BotoesPageState();
}

class _BotoesPageState extends State<BotoesPage> {
  ShapeBorder _buttonShape;

  @override
  Widget build(BuildContext context) {
    final ButtonThemeData buttonTheme =
        ButtonTheme.of(context).copyWith(shape: _buttonShape);
    return new Scaffold(
      body: new DefaultTabController(
        length: 5,
        child: new Scaffold(
            appBar: new AppBar(
              bottom: new TabBar(
                tabs: [
                  new Tab(text: 'Raised'),
                  new Tab(text: 'Flat'),
                  new Tab(text: 'Outline'),
                  new Tab(text: 'Icon'),
                  new Tab(text: 'Action')
                ],
              ),
              title: new Text("Botões Page"),
              backgroundColor: Colors.red,
            ),
            body: new TabBarView(
              children: [
                new ButtonTheme.fromButtonThemeData(
                    data: buttonTheme,
                    child: buildRaisedButton(
                        'Raised button adiciona dimensao a layouts geralmente simples. E enfatizam funções em espaços ou amplos.')),
                new ButtonTheme.fromButtonThemeData(
                    data: buttonTheme,
                    child: buildFlatButton(
                        'Flat button e um botao mais clean e é recomendado seu uso em barras de ferramentas e caixas de dialogos.')),
                new ButtonTheme.fromButtonThemeData(
                    data: buttonTheme,
                    child: buildOutlineButton(
                        'Outline button e um botao opcao e se eleva quando clicados é recomendado seu uso emparelhados com botões em relevo para indicar uma ação secundaria.')),
                new ButtonTheme.fromButtonThemeData(
                    data: buttonTheme, child: buildIconButton()),
                new ButtonTheme.fromButtonThemeData(
                    data: buttonTheme, child: buildActionButton()),
              ],
            )),
      ),
    );
  }

  Widget buildRaisedButton(title) {
    return Align(
      alignment: const Alignment(0.0, -0.2),
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Text(
            title,
            textAlign: TextAlign.center,
            style: new TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          new ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new RaisedButton(
                  child: const Text("Raised Button"), onPressed: () {}),
              const RaisedButton(
                  child: const Text("Desabilitado"), onPressed: null),
            ],
          ),
          new ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new RaisedButton.icon(
                  icon: const Icon(Icons.add, size: 18.0),
                  label: const Text("Raised"),
                  onPressed: () {}),
              new RaisedButton.icon(
                  icon: const Icon(Icons.add, size: 18.0),
                  label: const Text("Desabilitado"),
                  onPressed: null),
            ],
          )
        ],
      ),
    );
  }

  Widget buildFlatButton(title) {
    return Align(
      alignment: const Alignment(0.0, -0.2),
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Text(
            title,
            textAlign: TextAlign.center,
            style: new TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          new ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new FlatButton(
                  child: const Text("Flat Button"), onPressed: () {}),
              const FlatButton(
                  child: const Text("Desabilitado"), onPressed: null),
            ],
          ),
          new ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new FlatButton.icon(
                  icon: const Icon(Icons.add_circle_outline, size: 18.0),
                  label: const Text("Flat"),
                  onPressed: () {}),
              new FlatButton.icon(
                  icon: const Icon(Icons.add_circle_outline, size: 18.0),
                  label: const Text("Desabilitado"),
                  onPressed: null),
            ],
          )
        ],
      ),
    );
  }

  Widget buildOutlineButton(title) {
    return Align(
      alignment: const Alignment(0.0, -0.2),
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Text(
            title,
            textAlign: TextAlign.center,
            style: new TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          new ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new OutlineButton(
                  child: const Text("Outline Button"), onPressed: () {}),
              const OutlineButton(
                  child: const Text("Desabilitado"), onPressed: null),
            ],
          ),
          new ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new OutlineButton.icon(
                  icon: const Icon(Icons.add, size: 18.0),
                  label: const Text("Outline"),
                  onPressed: () {}),
              new OutlineButton.icon(
                  icon: const Icon(Icons.add, size: 18.0),
                  label: const Text("Desabilitado"),
                  onPressed: null),
            ],
          )
        ],
      ),
    );
  }

  Widget buildIconButton() {
    return Align(
      alignment: const Alignment(0.0, -0.2),
      child: new Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
        IconButton(icon: Icon(Icons.thumb_up), onPressed: () {}),
        IconButton(icon: Icon(Icons.thumb_down)),
      ]),
    );
  }

  Widget buildActionButton() {
    return Align(
      alignment: const Alignment(0.0, -0.2),
      child: new Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
        FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
      ]),
    );
  }
}
