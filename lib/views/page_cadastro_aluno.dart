import 'package:flutter/material.dart';

class PageCadastroAluno extends StatefulWidget {
  PageCadastroAluno({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageCadastroAlunoState createState() => _PageCadastroAlunoState();
}

class _PageCadastroAlunoState extends State<PageCadastroAluno> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final nomeAlunoField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Nome do Aluno",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final residenciaField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Residência",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final escolaField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Escola",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final serieField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Serie/Turma",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final pontoAlunoField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Ponto GPS",
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
                nomeAlunoField,
                SizedBox(height: 25.0),
                residenciaField,
                SizedBox(height: 25.0),
                escolaField,
                SizedBox(height: 25.0),
                serieField,
                SizedBox(height: 25.0),
                pontoAlunoField,
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
