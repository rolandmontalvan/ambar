import 'package:flutter/material.dart';

class PageCadastroVeiculo extends StatefulWidget {
  PageCadastroVeiculo({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageCadastroVeiculoState createState() => _PageCadastroVeiculoState();
}

class _PageCadastroVeiculoState extends State<PageCadastroVeiculo> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final modeloVeiculoField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Modelo do Veículo",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final anoVeiculoField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Ano",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final placaVeiculoField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Placa",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final chassisVeiculoField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Chassis",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final confirmButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.amber,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Confirmar",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final cancelButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.amber,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Cancelar",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 45.0),
                modeloVeiculoField,
                SizedBox(height: 25.0),
                anoVeiculoField,
                SizedBox(height: 25.0),
                placaVeiculoField,
                SizedBox(height: 25.0),
                chassisVeiculoField,
                SizedBox(
                  height: 35.0,
                ),
                confirmButon,
                SizedBox(
                  height: 15.0,
                ),
                cancelButon,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
