import 'package:flutter/material.dart';

class CardViagem {
  const CardViagem(this.Titulo, this.Descricao);

  final String Titulo;
  final List<String> Descricao;
}

final List<CardViagem> destinos = <CardViagem>[
  const CardViagem("USA", ["Denver", "Seattle", "Ilinois"]),
  const CardViagem("Japão", ["Okynawa", "Tokio", "Kioto"]),
  const CardViagem("Italia", ["Calabria", "Roma", "Veneza"])
];

class CardItens extends StatelessWidget {
  CardItens({Key key, @required this.destinos, this.shape}) : super(key: key);

  static const double height = 160.0;
  final CardViagem destinos;
  final ShapeBorder shape;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle descricaoStyle = theme.textTheme.subhead;
    return SafeArea(
        top: false,
        bottom: false,
        child: Container(
            padding: const EdgeInsets.all(8.0),
            height: height,
            child: Card(
                shape: shape,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                        child: Text(
                          destinos.Titulo,
                          style:
                              descricaoStyle.copyWith(color: Colors.redAccent),
                        )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                      child: DefaultTextStyle(
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: descricaoStyle,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    destinos.Descricao[0],
                                    style: descricaoStyle.copyWith(
                                        color: Colors.green),
                                  )),
                              Text(destinos.Descricao[1]),
                              Text(destinos.Descricao[2]),
                            ],
                          )),
                    ))
                  ],
                ))));
  }
}

class CardsPage extends StatefulWidget {
  @override
  _CardsPageState createState() => new _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  ShapeBorder _shape;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Cards Page'),
          backgroundColor: Colors.red,
          actions: <Widget>[
            new IconButton(
              icon: const Icon(Icons.sentiment_very_satisfied),
              tooltip: 'Sort',
              onPressed: () {
                setState(() {
                  _shape = _shape != null
                      ? null
                      : const RoundedRectangleBorder(
                          borderRadius: const BorderRadius.only(
                          topLeft: const Radius.circular(16.0),
                          topRight: const Radius.circular(16.0),
                          bottomLeft: const Radius.circular(2.0),
                          bottomRight: const Radius.circular(2.0),
                        ));
                });
              },
            ),
          ],
        ),
        body: new ListView(
          itemExtent: CardItens.height,
          padding: EdgeInsets.only(top:8.0, left: 8.0, right: 8.0, bottom: 0),
          children: destinos.map((CardViagem dest){
            return Container(
              margin: const EdgeInsets.only(bottom: 8.0),
              child:CardItens(destinos: dest, shape: _shape)
            );
          }).toList(),
        ));
  }
}
